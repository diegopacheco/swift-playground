extension Int {
    var squared: Int { return self * self }
    func times(_ action: () -> Void) {
        for _ in 0..<self { action() }
    }
}

extension String {
    var reversed: String { return String(self.reversed()) }
}

@main
struct main {
    static func main() {
        print("5 squared = \(5.squared)")
        3.times { print("Hello!") }
        print("swift reversed = \("swift".reversed)")
    }
}
