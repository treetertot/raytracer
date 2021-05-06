use std::convert::From;

use crate::hittable::HitRecord;
use crate::ray::Ray;
use crate::rtweekend::random_double;
use crate::vec3::{
    near_zero, random_in_unit_sphere, random_unit_vector, reflect, refract, unit_vector, Color,
};
use crate::scene_loader::Material as SceneMaterial;

pub(crate) type Scatter = Option<(Ray, Color)>;

#[derive(Debug, Clone)]
pub(crate) enum Material {
    Metal {
        albedo: Color,
        fuzz: f64
    },
    Lambertian (Color),
    Dielectric (f64),
}

impl From<SceneMaterial> for Material {
    fn from(scene_material: SceneMaterial) -> Self {
        match scene_material {
            SceneMaterial::Metal{albedo, fuzz} => Material::Metal{albedo: Color::new(albedo.r, albedo.g, albedo.b), fuzz},
            SceneMaterial::Lambertian{albedo} => Material::Lambertian(Color::new(albedo.r, albedo.g, albedo.b)),
            SceneMaterial::Dielectric { ir } => Material::Dielectric(ir)
        }
    }
}
impl Material {
    // Josh: I'm lazy but I probably should have split this up a bit more like I did in hittable
    pub(crate) fn scatter(&self, r_in: &Ray, rec: &HitRecord, scattered: &Ray) -> Scatter {
        match self {
            Material::Metal{albedo, fuzz} => {
                let reflected = reflect(&unit_vector(r_in.direction()), rec.normal());

                // The book has this surrounded by something like:
                //
                //     if scatter.direction().dot(rec.normal()) > 0.0 {
                //
                // but for some reason, that makes my metal spheres appear black.
                //
                // Everything *seems* to work fine without it.

                return Some((
                    Ray::new(
                        *rec.p(),
                        reflected + *fuzz * random_in_unit_sphere(),
                        Some(r_in.time()),
                    ),
                    *albedo,
                ));
            },
            Material::Lambertian(albedo) => {
                let mut scatter_direction = rec.normal() + random_unit_vector();

                // Catch degenerate scatter direction
                if near_zero(&scatter_direction) {
                    scatter_direction = *rec.normal();
                }

                Some((
                    Ray::new(*rec.p(), scatter_direction, Some(r_in.time())),
                    *albedo,
                ))
            },
            Material::Dielectric(ir) => {
                let attenuation = Color::new(1.0, 1.0, 1.0);
                let refraction_ratio = if *rec.front_face() {
                    1.0 / *ir
                } else {
                    *ir
                };

                let unit_direction = unit_vector(r_in.direction());
                let cos_theta = (-unit_direction).dot(rec.normal()).min(1.0);
                let sin_theta = (1.0 - cos_theta * cos_theta).sqrt();

                let cannot_refract = refraction_ratio * sin_theta > 1.0;
                let direction;

                // Why is this a block? Good question.
                let reflectance = {
                    let r0 = ((1.0 - refraction_ratio) / (1.0 + refraction_ratio)).powi(2);

                    r0 + (1.0 + r0) * (1.0 - cos_theta).powi(5)
                };

                if cannot_refract || reflectance > random_double() {
                    direction = reflect(&unit_direction, rec.normal());
                } else {
                    direction = refract(&unit_direction, rec.normal(), refraction_ratio);
                }

                Some((
                    Ray::new(*rec.p(), direction, Some(r_in.time())),
                    attenuation,
                ))
            }
        }
    }
}