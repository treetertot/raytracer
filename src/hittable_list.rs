use crate::hittable::{HitRecord, Hittable};
use crate::ray::Ray;

pub(crate) struct HittableList {
    objects: Vec<Box<dyn Hittable>>,
}

impl HittableList {
    pub(crate) fn new() -> Self {
        Self { objects: vec![] }
    }

    pub(crate) fn add(&mut self, object: Box<dyn Hittable>) {
        self.objects.push(object);
    }
}

impl Hittable for HittableList {
    fn hit(&self, r: &Ray, t_min: f64, t_max: f64) -> Option<HitRecord> {
        let mut temp_rec = None;
        let mut closest_so_far = t_max;

        for object in &self.objects {
            let rec = object.hit(r, t_min, closest_so_far);

            match rec {
                Some(rec) => {
                    closest_so_far = *rec.t();
                    temp_rec = Some(rec);
                }
                None => (),
            }
        }

        temp_rec
    }
}
