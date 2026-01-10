struct Item {
    var category: String
    var name: String
}

@main
struct main {
    static func main() {
        let items = [
            Item(category: "fruit", name: "apple"),
            Item(category: "vegetable", name: "carrot"),
            Item(category: "fruit", name: "banana"),
            Item(category: "vegetable", name: "broccoli"),
            Item(category: "fruit", name: "orange")
        ]
        let grouped = Dictionary(grouping: items) { $0.category }
        for (category, categoryItems) in grouped {
            print("\(category): \(categoryItems.map { $0.name })")
        }
        let words = ["apple", "ant", "bear", "banana", "cat"]
        let byFirstLetter = Dictionary(grouping: words) { String($0.first!) }
        print("By first letter: \(byFirstLetter)")
    }
}
