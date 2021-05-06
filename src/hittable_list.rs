use crate::hittable::{Hittable, HitRecord};
use crate::ray::Ray;

pub(crate) struct HitList(Vec<Hittable>);
impl HitList {
    pub(crate) fn new() -> Self {
        HitList(Vec::new())
    }

    pub(crate) fn add(&mut self, object: Hittable) {
        self.0.push(object)
    }

    pub fn hit(&self, r: &Ray, t_min: f64, t_max: f64) -> Option<HitRecord> {
        let mut temp_rec = None;
        let mut closest_so_far = t_max;

        for object in &self.0 {
            if let Some(rec) = object.hit(r, t_min, closest_so_far) {
                closest_so_far = *rec.t();
                temp_rec = Some(rec);
            }
        }

        temp_rec
    }
}