struct Counter {
    var value: Int = 0
    mutating func increment() { value += 1 }
    mutating func decrement() { value -= 1 }
    mutating func reset() { value = 0 }
    mutating func add(_ amount: Int) { value += amount }
}

struct Vector2D {
    var x: Double, y: Double
    mutating func scale(by factor: Double) { x *= factor; y *= factor }
    mutating func normalize() {
        let length = (x * x + y * y).squareRoot()
        if length > 0 { x /= length; y /= length }
    }
}

@main
struct main {
    static func main() {
        var counter = Counter()
        counter.increment(); counter.increment(); counter.add(5)
        print("Counter: \(counter.value)")
        var vec = Vector2D(x: 3, y: 4)
        print("Vector: (\(vec.x), \(vec.y))")
        vec.normalize()
        print("Normalized: (\(vec.x), \(vec.y))")
    }
}
