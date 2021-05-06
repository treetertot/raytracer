use crate::material::Material;
use crate::ray::Ray;
use crate::vec3::{Point3, Vec3};
use crate::scene_loader::StartEndPair;
use crate::sphere::hit_sphere;
use crate::moving_sphere::hit_moving_sphere;

pub(crate) struct HitRecord {
    p: Point3,
    normal: Vec3,
    material: Material,
    t: f64,
    front_face: bool,
}
impl HitRecord {
    pub(crate) fn new(p: Point3, normal: Vec3, material: Material, t: f64) -> Self {
        Self {
            p,
            normal,
            material,
            t,
            front_face: false,
        }
    }

    pub(crate) fn p(&self) -> &Point3 {
        &self.p
    }

    pub(crate) fn normal(&self) -> &Vec3 {
        &self.normal
    }

    pub(crate) fn material(&self) -> &Material {
        &self.material
    }

    pub(crate) fn t(&self) -> &f64 {
        &self.t
    }

    pub(crate) fn front_face(&self) -> &bool {
        &self.front_face
    }

    pub(crate) fn set_p(&mut self, p: Point3) {
        self.p = p;
    }

    pub(crate) fn set_normal(&mut self, normal: Vec3) {
        self.normal = normal;
    }

    pub(crate) fn set_t(&mut self, t: f64) {
        self.t = t;
    }

    pub(crate) fn set_face_normal(&mut self, r: &Ray, outward_normal: &Vec3) {
        self.front_face = r.direction().dot(outward_normal) < 0.0;
        self.normal = if self.front_face {
            *outward_normal
        } else {
            -outward_normal
        };
    }
}

// Another option would to make the variants into tuples containing the structs
// It would be possible to have them each in their own module
// Also the functions here would take fewer args
#[derive(Debug)]
pub(crate) enum Hittable {
    MovingSphere {
        center: StartEndPair<Point3>,
        time: StartEndPair<f64>,
        radius: f64,
        material: Material,
    },
    Sphere {
        center: Point3,
        radius: f64,
        material: Material,
    }
}
impl Hittable {
    pub(crate) fn hit(&self, r: &Ray, t_min: f64, t_max: f64) -> Option<HitRecord> {
        match self {
            Hittable::Sphere{center, radius, material} => hit_sphere(center, *radius, material, r, t_min, t_max),
            Hittable::MovingSphere{center, time, radius, material} => hit_moving_sphere(center, time, *radius, material, r, t_min, t_max)
        }
    }
}