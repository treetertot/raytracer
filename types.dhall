let Point3
    : Type
    = { x : Double, y : Double, z : Double }

let Color
    : Type
    = { r : Double, g : Double, b : Double }

let Material
    : Type
    = < Lambertian : { albedo : Color }
      | Metal : { albedo : Color, fuzz : Double }
      | Dielectric : { ir : Double }
      >

let Object
    : Type
    = < Sphere : { center : Point3, radius : Double, material : Material } >

in  { Object, Material, Color, Point3 }
