func factorial(_ n: Int) -> Int {
    if n <= 1 { return 1 }
    return n * factorial(n - 1)
}

func factorialIterative(_ n: Int) -> Int {
    var result = 1
    for i in 2...max(2, n) { result *= i }
    return n <= 1 ? 1 : result
}

@main
struct main {
    static func main() {
        for i in 0...10 {
            print("\(i)! = \(factorial(i))")
        }
        print("Iterative 5! = \(factorialIterative(5))")
        print("Iterative 7! = \(factorialIterative(7))")
    }
}
