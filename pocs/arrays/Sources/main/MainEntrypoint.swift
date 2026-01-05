@main
struct main {
    static func main() {
        var fruits = ["Apple", "Banana", "Orange"]
        fruits.append("Mango")
        fruits.insert("Grape", at: 0)
        let first = fruits.first ?? "None"
        let count = fruits.count
        print("Fruits: \(fruits)")
        print("First: \(first), Count: \(count)")
    }
}
