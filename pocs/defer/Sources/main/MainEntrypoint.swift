func processFile() {
    print("Opening file...")
    defer { print("Closing file...") }
    defer { print("Flushing buffer...") }
    print("Reading data...")
    print("Processing data...")
}

func divideWithDefer(_ a: Int, _ b: Int) -> Int? {
    defer { print("Division operation completed") }
    guard b != 0 else {
        print("Error: Division by zero")
        return nil
    }
    return a / b
}

@main
struct main {
    static func main() {
        processFile()
        print("---")
        let _ = divideWithDefer(10, 2)
        let _ = divideWithDefer(10, 0)
    }
}
