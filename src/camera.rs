use crate::ray::Ray;
use crate::rtweekend::degrees_to_radians;
use crate::vec3::{random_in_unit_disk, unit_vector, Point3, Vec3};

pub(crate) struct Camera {
    origin: Point3,
    lower_left_corner: Point3,
    horizontal: Vec3,
    vertical: Vec3,
    u: Vec3,
    w: Vec3,
    v: Vec3,
    lens_radius: f64,
}

impl Camera {
    pub(crate) fn new(
        look_from: Point3,
        look_at: Point3,
        vup: Vec3,
        vfov: f64, // vertical field-of-view in degrees
        aspect_ratio: f64,
        aperture: f64,
        focus_distance: f64,
    ) -> Self {
        let theta = degrees_to_radians(vfov);
        let h = (theta / 2.0).tan();
        let viewport_height = 2.0 * h;
        let viewport_width = aspect_ratio * viewport_height;

        let w = unit_vector(&(look_from - look_at));
        let u = unit_vector(&vup.cross(&w));
        let v = w.cross(&u);

        let origin = look_from;
        let horizontal = focus_distance * viewport_width * u;
        let vertical = focus_distance * viewport_height * v;
        let lower_left_corner = origin - horizontal / 2.0 - vertical / 2.0 - focus_distance * w;

        Self {
            origin,
            horizontal,
            vertical,
            lower_left_corner,
            u,
            w,
            v,
            lens_radius: aperture / 2.0,
        }
    }

    pub(crate) fn get_ray(&self, s: f64, t: f64) -> Ray {
        let rd = self.lens_radius * random_in_unit_disk();
        let offset = self.u * rd.x + self.v * rd.y;

        Ray::new(
            self.origin + offset,
            self.lower_left_corner + s * self.horizontal + t * self.vertical - self.origin - offset,
        )
    }
}
