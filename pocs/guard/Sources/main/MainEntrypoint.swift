func processValue(_ value: Int?) {
    guard let unwrapped = value else {
        print("Value is nil!")
        return
    }
    guard unwrapped > 0 else {
        print("Value must be positive!")
        return
    }
    print("Processing value: \(unwrapped)")
}

@main
struct main {
    static func main() {
        processValue(nil)
        processValue(-5)
        processValue(42)
    }
}
