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

pub(crate) fn random_unit_vector() -> Vec3 {
    unit_vector(&random_in_unit_sphere())
}

pub(crate) fn random_in_hemisphere(normal: &Vec3) -> Vec3 {
    let in_unit_sphere = random_in_unit_sphere();

    if in_unit_sphere.dot(normal) > 0.0 {
        // In the same hemisphere as the normal
        return in_unit_sphere;
    }

    -in_unit_sphere
}

pub(crate) fn near_zero(v: &Vec3) -> bool {
    const S: f64 = 1e-8;

    v.x.abs() < S && v.y.abs() < S && v.z.abs() < S
}

pub(crate) fn reflect(v: &Vec3, n: &Vec3) -> Vec3 {
    v - 2.0 * v.dot(n) * n
}

pub(crate) fn refract(uv: &Vec3, n: &Vec3, etai_over_etat: f64) -> Vec3 {
    let cos_theta = (-uv).dot(n).min(1.0);
    let r_out_perp = etai_over_etat * (uv + cos_theta * n);
    let r_out_parallel = -(1.0 - length_squared(&r_out_perp)).abs().sqrt() * n;

    r_out_perp + r_out_parallel
}
