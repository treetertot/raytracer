use std::rc::Rc;

use camera::Camera;
use color::write_color;
use hittable::Hittable;
use hittable_list::HittableList;
use material::{Dielectric, Lambertian, Material, Metal, ScatterStatus};
use ray::Ray;
use rtweekend::{random_double, random_double_between, INFINITY};
use sphere::Sphere;
use vec3::{length, random_vector_between, unit_vector, Color, Point3, Vec3};

mod camera;
mod color;
mod hittable;
mod hittable_list;
mod material;
mod ray;
mod rtweekend;
mod sphere;
mod vec3;

fn ray_color(r: &Ray, world: &dyn Hittable, depth: usize) -> Color {
    // If we've exceeded the ray bounce limit, no more light is gathered.
    if depth <= 0 {
        return Color::new(0.0, 0.0, 0.0);
    }

    let (hit, rec) = world.hit(r, 0.001, INFINITY);

    if hit {
        let rec = rec.unwrap();

        return match rec.material().scatter(r, &rec, &Ray::default()) {
            ScatterStatus::Absorbed => Color::new(0.0, 0.0, 0.0),
            ScatterStatus::Scattered {
                attenuation,
                scattered_ray,
            } => {
                let r = ray_color(&scattered_ray, world, depth - 1);

                Color::new(
                    r.x * attenuation.x,
                    r.y * attenuation.y,
                    r.z * attenuation.z,
                )
            }
        };
    }

    let unit_direction = unit_vector(r.direction());
    let t = 0.5 * (unit_direction.y + 1.0);

    (1.0 - t) * Color::new(1.0, 1.0, 1.0) + t * Color::new(0.5, 0.7, 1.0)
}

fn random_scene() -> HittableList {
    let mut world = HittableList::new();

    let ground = Lambertian::new(Color::new(0.5, 0.5, 0.5));
    world.add(Box::new(Sphere::new(
        Point3::new(0.0, -1000.0, 0.0),
        1000.0,
        Rc::new(ground),
    )));

    for a in -11..11 {
        for b in -11..11 {
            let choose_mat = random_double();
            let center = Point3::new(
                a as f64 + 0.9 * random_double(),
                0.2,
                b as f64 + 0.9 * random_double(),
            );

            if length(&(center - Point3::new(4.0, 0.2, 0.0))) > 0.9 {
                let sphere_material: Rc<dyn Material>;

                if choose_mat < 0.8 {
                    let r = random_double();
                    let albedo = Color::new(
                        r * random_double(),
                        r * random_double(),
                        r * random_double(),
                    );

                    sphere_material = Rc::new(Lambertian::new(albedo));
                } else if choose_mat < 0.95 {
                    let albedo = random_vector_between(0.5, 1.0);
                    let fuzz = random_double_between(0.0, 0.5);

                    sphere_material = Rc::new(Metal::new(albedo, fuzz));
                } else {
                    sphere_material = Rc::new(Dielectric::new(1.5));
                }

                world.add(Box::new(Sphere::new(center, 0.2, sphere_material)));
            }
        }
    }

    world.add(Box::new(Sphere::new(
        Point3::new(0.0, 1.0, 0.0),
        1.0,
        Rc::new(Dielectric::new(1.5)),
    )));

    world.add(Box::new(Sphere::new(
        Point3::new(-4.0, 1.0, 0.0),
        1.0,
        Rc::new(Lambertian::new(Color::new(0.4, 0.2, 0.1))),
    )));

    world.add(Box::new(Sphere::new(
        Point3::new(4.0, 1.0, 0.0),
        1.0,
        Rc::new(Metal::new(Color::new(0.7, 0.6, 0.5), 0.0)),
    )));

    world
}

fn main() {
    // Image

    const ASPECT_RATIO: f64 = 3.0 / 2.0;
    const IMAGE_WIDTH: usize = 1200;
    const IMAGE_HEIGHT: usize = (IMAGE_WIDTH as f64 / ASPECT_RATIO) as usize;
    const SAMPLES_PER_PIXEL: usize = 500;
    const MAX_DEPTH: usize = 50;

    // World

    let world = random_scene();

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

    println!("P3\n{} {}\n255", IMAGE_WIDTH, IMAGE_HEIGHT);

    for j in (0..IMAGE_HEIGHT).rev() {
        eprint!(".");

        for i in 0..IMAGE_WIDTH {
            let mut pixel_color = Color::new(0.0, 0.0, 0.0);

            for _ in 0..SAMPLES_PER_PIXEL {
                let u = (i as f64 + random_double()) / (IMAGE_WIDTH - 1) as f64;
                let v = (j as f64 + random_double()) / (IMAGE_HEIGHT - 1) as f64;
                let r = camera.get_ray(u, v);

                pixel_color += ray_color(&r, &world, MAX_DEPTH);
            }

            write_color(&pixel_color, SAMPLES_PER_PIXEL);
        }
    }
}
