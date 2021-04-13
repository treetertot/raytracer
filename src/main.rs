use color::write_color;
use vec3::Color;

mod color;
mod ray;
mod vec3;

fn main() {
    // Image

    const IMAGE_WIDTH: usize = 256;
    const IMAGE_HEIGHT: usize = 256;

    // Render

    println!("P3\n{} {}\n255", IMAGE_WIDTH, IMAGE_HEIGHT);

    for j in (0..IMAGE_HEIGHT).rev() {
        eprint!(".");

        for i in 0..IMAGE_WIDTH {
            let pixel_color = Color::new(
                i as f64 / (IMAGE_WIDTH - 1) as f64,
                j as f64 / (IMAGE_HEIGHT - 1) as f64,
                0.25,
            );

            write_color(&pixel_color);
        }
    }
}
