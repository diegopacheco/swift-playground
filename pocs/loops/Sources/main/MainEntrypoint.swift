@main
struct main {
    static func main() {
        print("For loop:")
        for i in 1...5 {
            print("  \(i)")
        }
        print("While loop:")
        var count = 3
        while count > 0 {
            print("  Countdown: \(count)")
            count -= 1
        }
        print("Done!")
    }
}
