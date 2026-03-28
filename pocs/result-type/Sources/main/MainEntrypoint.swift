enum MathError: Error {
    case divisionByZero
    case negativeRoot
}

func divide(_ a: Double, _ b: Double) -> Result<Double, MathError> {
    guard b != 0 else { return .failure(.divisionByZero) }
    return .success(a / b)
}

func squareRoot(_ x: Double) -> Result<Double, MathError> {
    guard x >= 0 else { return .failure(.negativeRoot) }
    return .success(x.squareRoot())
}

@main
struct main {
    static func main() {
        switch divide(10, 3) {
        case .success(let val): print("10 / 3 = \(val)")
        case .failure(let err): print("Error: \(err)")
        }
        switch squareRoot(-4) {
        case .success(let val): print("sqrt = \(val)")
        case .failure(let err): print("Error: \(err)")
        }
    }
}
