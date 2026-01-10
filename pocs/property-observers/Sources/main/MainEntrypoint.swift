class StepCounter {
    var totalSteps: Int = 0 {
        willSet { print("About to set totalSteps to \(newValue)") }
        didSet { print("Changed from \(oldValue) to \(totalSteps), added \(totalSteps - oldValue) steps") }
    }
}

@main
struct main {
    static func main() {
        let counter = StepCounter()
        counter.totalSteps = 100
        counter.totalSteps = 250
        counter.totalSteps = 500
        print("Final steps: \(counter.totalSteps)")
    }
}
