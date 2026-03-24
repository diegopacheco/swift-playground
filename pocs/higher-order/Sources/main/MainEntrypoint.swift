func apply<T>(_ value: T, transforms: [(T) -> T]) -> T {
    return transforms.reduce(value) { current, fn in fn(current) }
}

func compose<A, B, C>(_ f: @escaping (B) -> C, _ g: @escaping (A) -> B) -> (A) -> C {
    return { x in f(g(x)) }
}

@main
struct main {
    static func main() {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let sumOfSquaresOfEvens = numbers
            .filter { $0 % 2 == 0 }
            .map { $0 * $0 }
            .reduce(0, +)
        print("Sum of squares of evens: \(sumOfSquaresOfEvens)")
        let result = apply(10, transforms: [
            { $0 + 5 },
            { $0 * 2 },
            { $0 - 3 },
        ])
        print("Apply result: \(result)")
        let addOne = { (x: Int) in x + 1 }
        let timesThree = { (x: Int) in x * 3 }
        let addOneThenTimesThree = compose(timesThree, addOne)
        print("Composed(4): \(addOneThenTimesThree(4))")
        let grouped = numbers.reduce(into: [String: [Int]]()) { dict, n in
            let key = n % 2 == 0 ? "even" : "odd"
            dict[key, default: []].append(n)
        }
        print("Grouped: \(grouped)")
    }
}
