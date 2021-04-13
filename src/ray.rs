use crate::vec3::Point3;

#[derive(Default)]
pub(crate) struct Ray {
    origin: Point3,
    direction: Point3,
}

impl Ray {
    pub(crate) fn new(origin: Point3, direction: Point3) -> Self {
        Self { origin, direction }
    }

    pub(crate) fn origin(&self) -> &Point3 {
        &self.origin
    }

    pub(crate) fn direction(&self) -> &Point3 {
        &self.direction
    }

    pub(crate) fn at(&self, t: f64) -> Point3 {
        self.origin + t * self.direction
    }
}
