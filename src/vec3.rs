use nalgebra::Vector3;

use crate::rtweekend::{random_double, random_double_between};

pub(crate) type Vec3 = Vector3<f64>;
pub(crate) type Point3 = Vec3;
pub(crate) type Color = Vec3;

pub(crate) fn length_squared(v: &Vec3) -> f64 {
    v.x * v.x + v.y * v.y + v.z * v.z
}

pub(crate) fn length(v: &Vec3) -> f64 {
    length_squared(v).sqrt()
}

pub(crate) fn unit_vector(v: &Vec3) -> Vec3 {
    v / length(v)
}

pub(crate) fn random_vector() -> Vec3 {
    Vec3::new(random_double(), random_double(), random_double())
}

pub(crate) fn random_vector_between(min: f64, max: f64) -> Vec3 {
    Vec3::new(
        random_double_between(min, max),
        random_double_between(min, max),
        random_double_between(min, max),
    )
}

pub(crate) fn random_in_unit_sphere() -> Vec3 {
    loop {
        let p = random_vector_between(-1.0, 1.0);

        if length_squared(&p) >= 1.0 {
            continue;
        }

        return p;
    }
}
