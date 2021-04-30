# raytracer

This is a straightforward Rust port of the [_Ray Tracing in One Weekend_][rotw]
raytracer.

# The final cover render

The final cover render, with 500 samples per ray, took almost 2.5 hours to
render on my 2018 i7 MacBook Pro.

![](./final/final.png)

The final render as it appears in the book's source code, with an aspect ratio
of 16:9 and 50 samples per ray takes about 4.5 minutes to render.

[rotw]: https://raytracing.github.io/books/RayTracingInOneWeekend.html
