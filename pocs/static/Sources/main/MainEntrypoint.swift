struct Counter {
    nonisolated(unsafe) static var count = 0
    static let maxCount = 100
    var instanceId: Int
    init() {
        Counter.count += 1
        instanceId = Counter.count
    }
    static func reset() { count = 0 }
}

@main
struct main {
    static func main() {
        let a = Counter()
        let b = Counter()
        let c = Counter()
        print("Total counters: \(Counter.count)")
        print("Max count: \(Counter.maxCount)")
        print("Instance IDs: \(a.instanceId), \(b.instanceId), \(c.instanceId)")
        Counter.reset()
        print("After reset: \(Counter.count)")
    }
}
