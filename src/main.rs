use argh::FromArgs;
use color_eyre::eyre::Result;
use image::ColorType;
use indicatif::{ProgressBar, ProgressStyle};
use rayon::prelude::*;

use camera::Camera;
use color::clamp_color;
use hittable_list::HitList;
use ray::Ray;
use rtweekend::{random_double, INFINITY};
use scene_loader::{StartEndPair, load_scene};
use vec3::{unit_vector, Color, Point3, Vec3};

mod camera;
mod color;
mod hittable;
mod hittable_list;
mod material;
mod moving_sphere;
mod ray;
mod rtweekend;
mod scene_loader;
mod sphere;
mod vec3;

/// A ray tracer.
#[derive(FromArgs)]
struct Args {
    /// scene file
    #[argh(option, short = 'f')]
    scene_file: String,

    /// output file
    #[argh(option, short = 'o', default = "\"image.png\".to_string()")]
    output: String,

    /// aspect ratio
    #[argh(option, short = 'a', default = "16.0 / 9.0")]
    aspect_ratio: f64,

    /// output image width
    #[argh(option, short = 'w', default = "1200")]
    image_width: u32,

    /// samples per pixel
    #[argh(option, short = 's', default = "10")]
    samples_per_pixel: usize,

    /// maximum depth
    #[argh(option, short = 'd', default = "50")]
    max_depth: usize,

    /// focus distance
    #[argh(option, short = 'D', default = "10.0")]
    focus_distance: f64,

    /// aperture
    #[argh(option, short = 'A', default = "0.1")]
    aperture: f64,

    /// vertical field-of-view
    #[argh(option, short = 'v', default = "20.0")]
    vfov: f64,
}

fn ray_color(r: &Ray, world: &HitList, depth: usize) -> Color {
    // If we've exceeded the ray bounce limit, no more light is gathered.
    if depth == 0 {
        return Color::new(0.0, 0.0, 0.0);
    }

    return match world.hit(r, 0.001, INFINITY) {
        Some(rec) => {
            if let Some((scattered_ray, attenuation)) =
                rec.material().scatter(r, &rec, &Ray::default())
            {
                let r = ray_color(&scattered_ray, world, depth - 1);

                Color::new(
                    r.x * attenuation.x,
                    r.y * attenuation.y,
                    r.z * attenuation.z,
                )
            } else {
                Color::new(0.0, 0.0, 0.0)
            }
        }
        None => {
            let unit_direction = unit_vector(r.direction());
            let t = 0.5 * (unit_direction.y + 1.0);

            (1.0 - t) * Color::new(1.0, 1.0, 1.0) + t * Color::new(0.5, 0.7, 1.0)
        }
    };
}

fn main() -> Result<()> {
    color_eyre::install()?;

    let args: Args = argh::from_env();

    // Image

    let aspect_ratio = args.aspect_ratio;
    let image_width = args.image_width;
    let image_height: u32 = (image_width as f64 / aspect_ratio) as u32;
    let samples_per_pixel = args.samples_per_pixel;
    let max_depth = args.max_depth;

    // World

    let pb = ProgressBar::new(image_height as u64);
    pb.set_style(
        ProgressStyle::default_bar()
            .template("[{elapsed_precise}] ({eta_precise}) {msg} [{wide_bar}]"),
    );

    let world = load_scene(&args.scene_file)?;

    // Camera

    let look_from = Point3::new(13.0, 2.0, 3.0);
    let look_at = Point3::new(0.0, 0.0, 0.0);
    let vup = Vec3::new(0.0, 1.0, 0.0);
    let dist_to_focus = args.focus_distance;
    let aperture = args.aperture;

    let camera = Camera::new(
        look_from,
        look_at,
        vup,
        args.vfov,
        aspect_ratio,
        aperture,
        dist_to_focus,
        StartEndPair::new(0.0, 1.0),
    );

    // Render

    let mut buffer = vec![[0u8; 3]; (image_width * image_height) as usize];
    buffer.par_chunks_mut(image_width as usize)
        .zip((0..image_height).into_par_iter().rev())
        .for_each(|(row, j)| {
            pb.inc(1);

            for (i, oput) in row.iter_mut().enumerate() {
                let pixel_color: Color = (0..samples_per_pixel)
                    .map(|_| {
                        let u = (i as f64 + random_double()) / (image_width - 1) as f64;
                        let v = (j as f64 + random_double()) / (image_height - 1) as f64;

                        let r = camera.get_ray(u, v);
                        ray_color(&r, &world, max_depth)
                    })
                    .sum();
                let (r, g, b) = clamp_color(&pixel_color, samples_per_pixel);
                *oput = [r, g, b];
            }
        });
    let image_data: Vec<u8> = {
        let mut buf = Vec::with_capacity(buffer.len() * 3);
        for color in buffer {
            buf.push(color[0]);
            buf.push(color[1]);
            buf.push(color[2]);
        }
        buf
    };

    image::save_buffer(
        args.output,
        &image_data,
        image_width,
        image_height,
        ColorType::Rgb8,
    )?;

    Ok(())
}
