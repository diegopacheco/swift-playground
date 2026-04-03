@main
struct main {
    static func main() {
        let numbers = [3, -1, 4, -1, 5, -9, 2, 6]
        for n in numbers where n > 0 {
            print("Positive: \(n)")
        }
        let pairs = [(1, "a"), (2, "b"), (3, "c"), (4, "d")]
        for (num, letter) in pairs where num % 2 == 0 {
            print("Even pair: \(num) -> \(letter)")
        }
        let optionals: [Int?] = [1, nil, 3, nil, 5]
        for case let val? in optionals where val > 2 {
            print("Unwrapped > 2: \(val)")
        }
        let words = ["swift", "is", "awesome", "and", "safe"]
        for word in words where word.count > 3 {
            print("Long word: \(word)")
        }
    }
}
