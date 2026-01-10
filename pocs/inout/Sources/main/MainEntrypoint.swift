func increment(_ value: inout Int) {
    value += 1
}

func swapInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

func doubleAll(_ numbers: inout [Int]) {
    for i in 0..<numbers.count { numbers[i] *= 2 }
}

@main
struct main {
    static func main() {
        var x = 10
        increment(&x)
        print("After increment: \(x)")
        var a = 5, b = 10
        swapInts(&a, &b)
        print("After swap: a=\(a), b=\(b)")
        var nums = [1, 2, 3, 4, 5]
        doubleAll(&nums)
        print("Doubled: \(nums)")
    }
}
