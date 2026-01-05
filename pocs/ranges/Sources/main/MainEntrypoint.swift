@main
struct main {
    static func main() {
        let closedRange = 1...5
        let halfOpen = 1..<5
        print("Closed range (1...5):")
        for i in closedRange { print("  \(i)") }
        print("Half-open range (1..<5):")
        for i in halfOpen { print("  \(i)") }
        let names = ["Anna", "Bob", "Charlie", "Dave", "Eve"]
        print("First three: \(names[0..<3])")
        print("From index 2: \(names[2...])")
        print("Range contains 3: \(closedRange.contains(3))")
    }
}
