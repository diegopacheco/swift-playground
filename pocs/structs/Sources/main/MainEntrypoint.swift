struct Point {
    var x: Double
    var y: Double

    func distance(to other: Point) -> Double {
        let dx = x - other.x
        let dy = y - other.y
        return (dx * dx + dy * dy).squareRoot()
    }
}

@main
struct main {
    static func main() {
        let p1 = Point(x: 0, y: 0)
        let p2 = Point(x: 3, y: 4)
        print("Point 1: (\(p1.x), \(p1.y))")
        print("Point 2: (\(p2.x), \(p2.y))")
        print("Distance: \(p1.distance(to: p2))")
    }
}
