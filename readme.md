# raytracer

This is a straightforward Rust port of the [_Ray Tracing in One Weekend_][rotw]
raytracer.

# The final cover render

The final cover render, with 500 samples per ray, took almost 2.5 hours to
render on my 2018 i7 MacBook Pro.

![](./final/final.png)

The final render as it appears in the source code, with an aspect ratioi of 16:9
and 50 samples per ray took about 11 minutes to render, which is still slower
than the original, which took about 7 minutes. It's my goal to make my port
significantly faster.

[rotw]: https://raytracing.github.io/books/RayTracingInOneWeekend.html
