func makeCounter(start: Int) -> () -> Int {
    var count = start
    return {
        count += 1
        return count
    }
}

func makeMultiplier(_ factor: Int) -> (Int) -> Int {
    return { value in value * factor }
}

@main
struct main {
    static func main() {
        let counter = makeCounter(start: 0)
        print("Count: \(counter())")
        print("Count: \(counter())")
        print("Count: \(counter())")
        let double = makeMultiplier(2)
        let triple = makeMultiplier(3)
        print("Double 5: \(double(5))")
        print("Triple 5: \(triple(5))")
        let pipeline = [
            { (x: Int) in x + 10 },
            { (x: Int) in x * 2 },
            { (x: Int) in x - 3 },
        ]
        let result = pipeline.reduce(5) { val, fn in fn(val) }
        print("Pipeline result: \(result)")
    }
}
