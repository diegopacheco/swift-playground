@main
struct main {
    static func main() {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let doubled = numbers.map { $0 * 2 }
        let evens = numbers.filter { $0 % 2 == 0 }
        let sum = numbers.reduce(0, +)
        let product = numbers.reduce(1, *)
        print("Original: \(numbers)")
        print("Doubled: \(doubled)")
        print("Evens: \(evens)")
        print("Sum: \(sum)")
        print("Product: \(product)")
        let compacted = [1, nil, 3, nil, 5].compactMap { $0 }
        print("Compacted: \(compacted)")
    }
}
