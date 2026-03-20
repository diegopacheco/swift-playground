@main
struct main {
    static func main() {
        let numbers = [10, 20, 30, 40, 50, 60, 70, 80]
        print("First 3: \(Array(numbers.prefix(3)))")
        print("Last 3: \(Array(numbers.suffix(3)))")
        print("Drop first 2: \(Array(numbers.dropFirst(2)))")
        print("Drop last 2: \(Array(numbers.dropLast(2)))")
        let chunks = stride(from: 0, to: numbers.count, by: 3).map {
            Array(numbers[$0..<min($0 + 3, numbers.count)])
        }
        print("Chunks of 3: \(chunks)")
        let (evens, odds) = numbers.reduce(into: ([Int](), [Int]())) { result, n in
            if n % 2 == 0 { result.0.append(n) } else { result.1.append(n) }
        }
        print("Evens: \(evens)")
        print("Odds: \(odds)")
        print("Contains 50: \(numbers.contains(50))")
        print("All > 0: \(numbers.allSatisfy { $0 > 0 })")
    }
}
