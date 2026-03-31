import Foundation

@main
struct main {
    static func main() {
        let text = "Hello, Swift 6.2 is great! Swift is fast."
        print("Contains 'Swift': \(text.contains("Swift"))")
        let replaced = text.replacingOccurrences(of: "Swift", with: "Rust")
        print("Replaced: \(replaced)")
        let csv = "alice,bob,carol,dave"
        let names = csv.split(separator: ",")
        print("Names: \(names)")
        let padded = String(repeating: "*", count: 20)
        print(padded)
        let reversed = String(text.prefix(5).reversed())
        print("Reversed 'Hello': \(reversed)")
        let upper = text.uppercased()
        let lower = text.lowercased()
        print("Upper: \(upper.prefix(10))...")
        print("Lower: \(lower.prefix(10))...")
    }
}
