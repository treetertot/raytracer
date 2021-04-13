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
            let r = i as f64 / (IMAGE_WIDTH - 1) as f64;
            let g = j as f64 / (IMAGE_HEIGHT - 1) as f64;
            const B: f64 = 0.25;

            let ir = (255.999 * r) as usize;
            let ig = (255.999 * g) as usize;
            const IB: usize = (255.999 * B) as usize;

            println!("{} {} {}", ir, ig, IB);
        }
    }
}
