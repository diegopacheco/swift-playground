import Foundation

@main
struct main {
    static func main() {
        let str = "Hello, Swift!"
        print("Original: \(str)")
        print("Uppercase: \(str.uppercased())")
        print("Lowercase: \(str.lowercased())")
        print("Count: \(str.count)")
        print("Starts with 'Hello': \(str.hasPrefix("Hello"))")
        print("Ends with '!': \(str.hasSuffix("!"))")
        let words = str.split(separator: " ")
        print("Words: \(words)")
        let nsStr = str as NSString
        let replaced = nsStr.replacingOccurrences(of: "Swift", with: "World")
        print("Replaced: \(replaced)")
    }
}
