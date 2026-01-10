func fibonacci(_ n: Int) -> Int {
    if n <= 1 { return n }
    return fibonacci(n - 1) + fibonacci(n - 2)
}

func fibonacciSequence(_ count: Int) -> [Int] {
    var seq: [Int] = []
    for i in 0..<count { seq.append(fibonacci(i)) }
    return seq
}

@main
struct main {
    static func main() {
        print("Fibonacci of 10: \(fibonacci(10))")
        print("First 15 Fibonacci numbers:")
        print(fibonacciSequence(15))
    }
}
