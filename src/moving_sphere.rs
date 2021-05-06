use crate::hittable::HitRecord;
use crate::material::Material;
use crate::ray::Ray;
use crate::scene_loader::StartEndPair;
use crate::vec3::Point3;

pub(crate) fn hit_moving_sphere(center: &StartEndPair<Point3>, time: &StartEndPair<f64>, radius: f64, material: &Material, r: &Ray, t_min: f64, t_max: f64) -> Option<HitRecord> {
    let center = interpolate(center, time, r.time());
    let oc = r.origin() - center;
    let a = r.direction().magnitude_squared();
    let half_b = oc.dot(r.direction());
    let c = oc.magnitude_squared() - radius * radius;

    let discriminant = half_b * half_b - a * c;

    if discriminant < 0.0 {
        return None;
    }

    let sqrtd = discriminant.sqrt();

    // Find the nearest root that lies in the acceptable range.
    let mut root = (-half_b - sqrtd) / a;
    if root < t_min || t_max < root {
        root = (-half_b + sqrtd) / a;

        if root < t_min || t_max < root {
            return None;
        }
    }

    let t = root;
    let p = r.at(t);

    let mut rec = HitRecord::new(
        p,
        (p - center) / radius,
        material.clone(),
        t,
    );
    let outward_normal = (rec.p() - center) / radius;
    rec.set_face_normal(r, &outward_normal);

    Some(rec)
}

fn interpolate(center: &StartEndPair<Point3>, t_range: &StartEndPair<f64>, t: f64) -> Point3 {
    center.start()
        + ((t - t_range.start()) / (t_range.end() - t_range.start()))
            * (center.end() - center.start())
}