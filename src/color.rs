use crate::vec3::Color;

pub(crate) fn write_color(pixel_color: &Color) {
    println!(
        "{} {} {}",
        (255.999 * pixel_color.x) as usize,
        (255.999 * pixel_color.y) as usize,
        (255.999 * pixel_color.z) as usize
    );
}
