func isPalindrome(_ str: String) -> Bool {
    let cleaned = str.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

@main
struct main {
    static func main() {
        let words = ["radar", "hello", "level", "world", "A man a plan a canal Panama"]
        for word in words {
            let result = isPalindrome(word) ? "is" : "is not"
            print("\"\(word)\" \(result) a palindrome")
        }
    }
}
