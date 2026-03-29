struct Countdown: Sequence, IteratorProtocol {
    var current: Int
    mutating func next() -> Int? {
        guard current > 0 else { return nil }
        defer { current -= 1 }
        return current
    }
}

struct FibSequence: Sequence, IteratorProtocol {
    var a = 0, b = 1
    var count: Int
    var step = 0
    mutating func next() -> Int? {
        guard step < count else { return nil }
        defer { let temp = a; a = b; b = temp + b; step += 1 }
        return a
    }
}

@main
struct main {
    static func main() {
        let countdown = Countdown(current: 5)
        print("Countdown: \(Array(countdown))")
        let fibs = FibSequence(count: 10)
        print("Fibonacci: \(Array(fibs))")
    }
}
