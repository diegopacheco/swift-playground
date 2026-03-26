enum Shape {
    case circle(radius: Double)
    case rect(width: Double, height: Double)
    case triangle(base: Double, height: Double)
}

func area(_ shape: Shape) -> Double {
    switch shape {
    case .circle(let r): return 3.14159 * r * r
    case .rect(let w, let h): return w * h
    case .triangle(let b, let h): return 0.5 * b * h
    }
}

@main
struct main {
    static func main() {
        let shapes: [Shape] = [.circle(radius: 5), .rect(width: 4, height: 6), .triangle(base: 3, height: 8)]
        for shape in shapes {
            print("Area: \(area(shape))")
        }
        let point = (x: 3, y: 0)
        switch point {
        case (0, 0): print("Origin")
        case (let x, 0): print("On x-axis at \(x)")
        case (0, let y): print("On y-axis at \(y)")
        case let (x, y): print("At (\(x), \(y))")
        }
    }
}
