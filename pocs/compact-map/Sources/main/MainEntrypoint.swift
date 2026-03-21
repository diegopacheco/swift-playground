@main
struct main {
    static func main() {
        let strings = ["1", "two", "3", "four", "5"]
        let numbers = strings.compactMap { Int($0) }
        print("Parsed numbers: \(numbers)")
        let nested = [[1, 2, 3], [4, 5], [6]]
        let flat = nested.flatMap { $0 }
        print("Flat: \(flat)")
        let optionals: [Int?] = [1, nil, 3, nil, 5, nil, 7]
        let unwrapped = optionals.compactMap { $0 }
        print("Unwrapped: \(unwrapped)")
        let words = ["hello", "world", "swift"]
        let chars = words.flatMap { Array($0) }
        print("Chars count: \(chars.count)")
    }
}
