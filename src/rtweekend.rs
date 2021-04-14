use lazy_static::lazy_static;
use rand::distributions::Uniform;
use rand::prelude::*;

pub(crate) const INFINITY: f64 = f64::INFINITY;

lazy_static! {
    static ref DISTRIBUTION: Uniform<f64> = Uniform::new(0.0, 1.0);
}

pub(crate) fn random_double() -> f64 {
    let mut rng = rand::thread_rng();

    DISTRIBUTION.sample(&mut rng)
}

pub(crate) fn random_double_between(min: f64, max: f64) -> f64 {
    min + (max - min) * random_double()
}

pub(crate) fn clamp(x: f64, min: f64, max: f64) -> f64 {
    x.clamp(min, max)
}

pub(crate) fn degrees_to_radians(degrees: f64) -> f64 {
    degrees * std::f64::consts::PI / 180.0
}
