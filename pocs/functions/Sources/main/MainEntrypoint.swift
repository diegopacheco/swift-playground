func greet(name: String) -> String {
    return "Hello, \(name)!"
}

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func divide(_ a: Double, by b: Double) -> Double {
    return a / b
}

@main
struct main {
    static func main() {
        print(greet(name: "Swift"))
        print("5 + 3 = \(add(5, 3))")
        print("10 / 4 = \(divide(10, by: 4))")
    }
}
