struct Stack<Element> {
    private var items: [Element] = []
    mutating func push(_ item: Element) { items.append(item) }
    mutating func pop() -> Element? { return items.popLast() }
    var isEmpty: Bool { return items.isEmpty }
    var count: Int { return items.count }
}

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a; a = b; b = temp
}

@main
struct main {
    static func main() {
        var stack = Stack<Int>()
        stack.push(1); stack.push(2); stack.push(3)
        print("Stack count: \(stack.count)")
        print("Popped: \(stack.pop() ?? 0)")
        var x = 10, y = 20
        swapValues(&x, &y)
        print("After swap: x=\(x), y=\(y)")
    }
}
