use nalgebra::Vector3;

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
