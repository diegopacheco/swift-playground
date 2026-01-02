// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct main {
    static func main() {
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)

        if convertedNumber != nil {
            print("convertedNumber contains some integer value.")
        }
    }
}
