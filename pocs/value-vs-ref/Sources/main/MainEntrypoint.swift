struct ValuePoint {
    var x: Int
    var y: Int
}

class RefPoint {
    var x: Int
    var y: Int
    init(x: Int, y: Int) { self.x = x; self.y = y }
}

@main
struct main {
    static func main() {
        var v1 = ValuePoint(x: 1, y: 2)
        var v2 = v1
        v2.x = 99
        print("Value v1: (\(v1.x), \(v1.y))")
        print("Value v2: (\(v2.x), \(v2.y))")
        print("v1 unchanged: \(v1.x == 1)")

        let r1 = RefPoint(x: 1, y: 2)
        let r2 = r1
        r2.x = 99
        print("Ref r1: (\(r1.x), \(r1.y))")
        print("Ref r2: (\(r2.x), \(r2.y))")
        print("r1 changed: \(r1.x == 99)")
        print("Same ref: \(r1 === r2)")
    }
}
