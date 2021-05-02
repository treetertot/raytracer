use std::io::prelude::*;
use std::rc::Rc;

use color_eyre::eyre::Result;
use serde::Deserialize;

use crate::hittable_list::HittableList;
use crate::material::{Dielectric, Lambertian, Metal};
use crate::sphere::Sphere;

#[derive(Deserialize)]
pub(crate) struct Point3 {
    x: f64,
    y: f64,
    z: f64,
}

#[derive(Deserialize)]
pub(crate) struct Color {
    r: f64,
    g: f64,
    b: f64,
}

#[derive(Deserialize)]
#[serde(untagged)]
pub(crate) enum Material {
    Lambertian { albedo: Color },
    Metal { albedo: Color, fuzz: f64 },
    Dielectric { ir: f64 },
}

#[derive(Deserialize)]
#[serde(untagged)]
pub(crate) enum Object {
    Sphere {
        center: Point3,
        radius: f64,
        material: Material,
    },
}

pub(crate) fn load_scene(path: &str) -> Result<HittableList> {
    let mut scene_yml = String::new();

    if path == "-" {
        std::io::stdin().read_to_string(&mut scene_yml)?;
    } else {
        scene_yml = std::fs::read_to_string(path)?;
    }

    let scene = serde_yaml::from_str::<Vec<Object>>(&scene_yml)?;
    let mut world = HittableList::new();

    for object in scene {
        match object {
            Object::Sphere {
                center,
                radius,
                material,
            } => {
                let center = crate::vec3::Point3::new(center.x, center.y, center.z);
                let mat: Rc<dyn crate::material::Material> = match material {
                    Material::Lambertian { albedo } => Rc::new(Lambertian::new(crate::Color::new(
                        albedo.r, albedo.g, albedo.b,
                    ))),
                    Material::Metal { albedo, fuzz } => Rc::new(Metal::new(
                        crate::Color::new(albedo.r, albedo.g, albedo.b),
                        fuzz,
                    )),
                    Material::Dielectric { ir } => Rc::new(Dielectric::new(ir)),
                };

                world.add(Box::new(Sphere::new(center, radius, mat)));
            }
        }
    }

    Ok(world)
}
