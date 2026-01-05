protocol Drawable {
    func draw() -> String
}

struct Circle: Drawable {
    var radius: Double
    func draw() -> String { return "Circle with radius \(radius)" }
}

struct Rectangle: Drawable {
    var width: Double, height: Double
    func draw() -> String { return "Rectangle \(width)x\(height)" }
}

@main
struct main {
    static func main() {
        let shapes: [Drawable] = [Circle(radius: 5), Rectangle(width: 10, height: 20)]
        for shape in shapes {
            print(shape.draw())
        }
    }
}
