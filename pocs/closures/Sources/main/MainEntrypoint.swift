@main
struct main {
    static func main() {
        let multiply = { (a: Int, b: Int) -> Int in
            return a * b
        }
        print("3 * 4 = \(multiply(3, 4))")

        let numbers = [1, 2, 3, 4, 5]
        let doubled = numbers.map { $0 * 2 }
        let sum = numbers.reduce(0) { $0 + $1 }
        print("Doubled: \(doubled)")
        print("Sum: \(sum)")
    }
}
