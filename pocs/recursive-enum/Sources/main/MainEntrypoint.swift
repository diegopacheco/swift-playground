indirect enum Expr {
    case number(Int)
    case add(Expr, Expr)
    case multiply(Expr, Expr)
}

func evaluate(_ expr: Expr) -> Int {
    switch expr {
    case .number(let n): return n
    case .add(let a, let b): return evaluate(a) + evaluate(b)
    case .multiply(let a, let b): return evaluate(a) * evaluate(b)
    }
}

func describe(_ expr: Expr) -> String {
    switch expr {
    case .number(let n): return "\(n)"
    case .add(let a, let b): return "(\(describe(a)) + \(describe(b)))"
    case .multiply(let a, let b): return "(\(describe(a)) * \(describe(b)))"
    }
}

@main
struct main {
    static func main() {
        let expr = Expr.add(.number(3), .multiply(.number(4), .number(5)))
        print("Expression: \(describe(expr))")
        print("Result: \(evaluate(expr))")
    }
}
