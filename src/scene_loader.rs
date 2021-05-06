use std::io::prelude::*;

use color_eyre::eyre::Result;
use serde::Deserialize;

use crate::hittable_list::HitList;
use crate::hittable::Hittable;

#[derive(Deserialize)]
pub(crate) struct Point3 {
    x: f64,
    y: f64,
    z: f64,
}

#[derive(Deserialize)]
pub(crate) struct Color {
    pub r: f64,
    pub g: f64,
    pub b: f64,
}

#[derive(Deserialize)]
#[serde(untagged)]
pub(crate) enum Material {
    Metal { albedo: Color, fuzz: f64 },
    Lambertian { albedo: Color },
    Dielectric { ir: f64 },
}

#[derive(Deserialize, Debug)]
pub(crate) struct StartEndPair<T> {
    start: T,
    end: T,
}

impl<T> StartEndPair<T> {
    pub(crate) fn new(start: T, end: T) -> Self {
        Self { start, end }
    }

    pub(crate) fn start(&self) -> &T {
        &self.start
    }

    pub(crate) fn end(&self) -> &T {
        &self.end
    }
}

#[derive(Deserialize)]
#[serde(untagged)]
pub(crate) enum Object {
    Sphere {
        center: Point3,
        radius: f64,
        material: Material,
    },
    MovingSphere {
        center: StartEndPair<Point3>,
        time: StartEndPair<f64>,
        radius: f64,
        material: Material,
    },
}

pub(crate) fn load_scene(path: &str) -> Result<HitList> {
    let mut scene_yml;

    if path == "-" {
        scene_yml = String::new();

        std::io::stdin().read_to_string(&mut scene_yml)?;
    } else {
        scene_yml = std::fs::read_to_string(path)?;
    }

    let scene = serde_yaml::from_str::<Vec<Object>>(&scene_yml)?;
    let mut world = HitList::new();

    for object in scene {
        match object {
            Object::Sphere {
                center,
                radius,
                material,
            } => {
                let center = crate::vec3::Point3::new(center.x, center.y, center.z);

                world.add(Hittable::Sphere {
                    center,
                    material: material.into(),
                    radius
                });
            }
            Object::MovingSphere {
                center,
                radius,
                material,
                time,
            } => {
                let material = material.into();
                let center = StartEndPair {
                    start: crate::vec3::Point3::new(center.start.x, center.start.y, center.start.z),
                    end: crate::vec3::Point3::new(center.end.x, center.end.y, center.end.z),
                };

                world.add(Hittable::MovingSphere {
                    center,
                    time,
                    radius,
                    material
                });
            }
        }
    }

    Ok(world)
}