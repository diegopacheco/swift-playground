enum MathError: Error {
    case divisionByZero
    case negativeNumber
}

func divide(_ a: Int, by b: Int) throws -> Int {
    if b == 0 { throw MathError.divisionByZero }
    return a / b
}

@main
struct main {
    static func main() {
        do {
            let result = try divide(10, by: 2)
            print("10 / 2 = \(result)")
            let _ = try divide(10, by: 0)
        } catch MathError.divisionByZero {
            print("Error: Cannot divide by zero!")
        } catch {
            print("Unknown error: \(error)")
        }
    }
}
