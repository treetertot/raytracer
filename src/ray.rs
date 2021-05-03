use crate::vec3::Point3;

#[derive(Default)]
pub(crate) struct Ray {
    origin: Point3,
    direction: Point3,
    time: Option<f64>,
}

impl Ray {
    pub(crate) fn new(origin: Point3, direction: Point3, time: Option<f64>) -> Self {
        Self {
            origin,
            direction,
            time,
        }
    }

    pub(crate) fn origin(&self) -> &Point3 {
        &self.origin
    }

    pub(crate) fn direction(&self) -> &Point3 {
        &self.direction
    }

    pub(crate) fn time(&self) -> f64 {
        self.time.unwrap_or(0.0)
    }

    pub(crate) fn at(&self, t: f64) -> Point3 {
        self.origin + t * self.direction
    }
}
