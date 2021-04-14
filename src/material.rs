use crate::hittable::HitRecord;
use crate::ray::Ray;
use crate::vec3::{
    near_zero, random_in_unit_sphere, random_unit_vector, reflect, unit_vector, Color,
};

/// FIXME: This could use a better name.
pub(crate) enum ScatterStatus {
    Absorbed,
    Scattered { attenuation: Color, ray: Ray },
}

pub(crate) trait Material {
    fn scatter(&self, r_in: &Ray, rec: &HitRecord, scattered: &Ray) -> ScatterStatus;
}

pub(crate) struct Lambertian {
    albedo: Color,
}

impl Lambertian {
    pub(crate) fn new(albedo: Color) -> Self {
        Self { albedo }
    }
}

impl Material for Lambertian {
    fn scatter(&self, _r_in: &Ray, rec: &HitRecord, _scatteredd: &Ray) -> ScatterStatus {
        let mut scatter_direction = rec.normal() + random_unit_vector();

        // Catch degenerate scatter direction
        if near_zero(&scatter_direction) {
            scatter_direction = *rec.normal();
        }

        ScatterStatus::Scattered {
            ray: Ray::new(*rec.p(), scatter_direction),
            attenuation: self.albedo,
        }
    }
}

pub(crate) struct Metal {
    albedo: Color,
    fuzz: f64,
}

impl Metal {
    pub(crate) fn new(albedo: Color, fuzz: f64) -> Self {
        Self {
            albedo,
            fuzz: fuzz.min(1.0),
        }
    }
}

impl Material for Metal {
    fn scatter(&self, r_in: &Ray, rec: &HitRecord, _scattered: &Ray) -> ScatterStatus {
        let reflected = reflect(&unit_vector(r_in.direction()), rec.normal());

        ScatterStatus::Scattered {
            ray: Ray::new(*rec.p(), reflected + self.fuzz * random_in_unit_sphere()),
            attenuation: self.albedo,
        }
    }
}
