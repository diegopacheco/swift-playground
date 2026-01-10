func sum(_ numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}

func average(_ numbers: Double...) -> Double {
    guard !numbers.isEmpty else { return 0 }
    return numbers.reduce(0, +) / Double(numbers.count)
}

func printAll(_ items: Any...) {
    for item in items { print(item) }
}

@main
struct main {
    static func main() {
        print("Sum of 1,2,3,4,5: \(sum(1, 2, 3, 4, 5))")
        print("Sum of 10,20: \(sum(10, 20))")
        print("Average of 1.0,2.0,3.0: \(average(1.0, 2.0, 3.0))")
        print("Printing all:")
        printAll("Hello", 42, 3.14, true)
    }
}
