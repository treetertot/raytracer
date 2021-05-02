use color_eyre::eyre::Result;
use image::ColorType;
use indicatif::{ProgressBar, ProgressStyle};

use camera::Camera;
use color::clamp_color;
use hittable::Hittable;
use ray::Ray;
use rtweekend::{random_double, INFINITY};
use scene_loader::load_scene;
use vec3::{unit_vector, Color, Point3, Vec3};

mod camera;
mod color;
mod hittable;
mod hittable_list;
mod material;
mod ray;
mod rtweekend;
mod scene_loader;
mod sphere;
mod vec3;

fn ray_color(r: &Ray, world: &dyn Hittable, depth: usize) -> Color {
    // If we've exceeded the ray bounce limit, no more light is gathered.
    if depth == 0 {
        return Color::new(0.0, 0.0, 0.0);
    }

    return match world.hit(r, 0.001, INFINITY) {
        Some(rec) => {
            let (scattered_ray, attenuation) = rec.material().scatter(r, &rec, &Ray::default());
            let r = ray_color(&scattered_ray, world, depth - 1);

            Color::new(
                r.x * attenuation.x,
                r.y * attenuation.y,
                r.z * attenuation.z,
            )
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
    // Image

    const ASPECT_RATIO: f64 = 16.0 / 9.0;
    const IMAGE_WIDTH: u32 = 1200;
    const IMAGE_HEIGHT: u32 = (IMAGE_WIDTH as f64 / ASPECT_RATIO) as u32;
    const SAMPLES_PER_PIXEL: usize = 50;
    const MAX_DEPTH: usize = 50;

    // World

    const PROGRESS_BAR_TEMPLATE: &'static str =
        "[{elapsed_precise}] ({eta_precise}) {msg} [{wide_bar}]";
    const PROGRESS_BAR_TEMPLATE_WITHOUT_MESSAGE: &'static str =
        "[{elapsed_precise}] ({eta_precise}) [{wide_bar}]";

    let pb = ProgressBar::new(IMAGE_HEIGHT as u64);
    pb.set_style(ProgressStyle::default_bar().template(PROGRESS_BAR_TEMPLATE));

    pb.set_message("loading scene");
    let world = load_scene("scene.dhall")?;

    // You'd think we'd just be able to call pb.set_message(""), but that
    // leaves a gap where the message is supposed to go.
    // So, we reinitalize the progress bar with a new template without the
    // message field.

    pb.set_style(ProgressStyle::default_bar().template(PROGRESS_BAR_TEMPLATE_WITHOUT_MESSAGE));

    // Camera

    let look_from = Point3::new(13.0, 2.0, 3.0);
    let look_at = Point3::new(0.0, 0.0, 0.0);
    let vup = Vec3::new(0.0, 1.0, 0.0);
    const DIST_TO_FOCUS: f64 = 10.0;
    const APERTURE: f64 = 0.1;

    let camera = Camera::new(
        look_from,
        look_at,
        vup,
        20.0,
        ASPECT_RATIO,
        APERTURE,
        DIST_TO_FOCUS,
    );

    // Render
    let mut image_data = Vec::with_capacity((IMAGE_WIDTH * IMAGE_HEIGHT * 3) as usize);

    for j in (0..IMAGE_HEIGHT).rev() {
        pb.inc(1);

        for i in 0..IMAGE_WIDTH {
            let pixel_color = (0..SAMPLES_PER_PIXEL)
                .map(|_| {
                    let u = (i as f64 + random_double()) / (IMAGE_WIDTH - 1) as f64;
                    let v = (j as f64 + random_double()) / (IMAGE_HEIGHT - 1) as f64;

                    camera.get_ray(u, v)
                })
                .fold(Color::new(0.0, 0.0, 0.0), |pixel_color, r| {
                    pixel_color + ray_color(&r, &world, MAX_DEPTH)
                });

            let (r, g, b) = clamp_color(&pixel_color, SAMPLES_PER_PIXEL);

            image_data.push(r);
            image_data.push(g);
            image_data.push(b);
        }
    }

    image::save_buffer(
        "image.png",
        &image_data,
        IMAGE_WIDTH,
        IMAGE_HEIGHT,
        ColorType::Rgb8,
    )?;

    Ok(())
}
