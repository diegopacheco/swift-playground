struct Person {
    var name: String
    var age: Int
}

@main
struct main {
    static func main() {
        let numbers = [5, 2, 8, 1, 9, 3]
        print("Original: \(numbers)")
        print("Ascending: \(numbers.sorted())")
        print("Descending: \(numbers.sorted(by: >))")
        let people = [Person(name: "Alice", age: 30), Person(name: "Bob", age: 25), Person(name: "Charlie", age: 35)]
        let byAge = people.sorted { $0.age < $1.age }
        let byName = people.sorted { $0.name < $1.name }
        print("By age: \(byAge.map { "\($0.name):\($0.age)" })")
        print("By name: \(byName.map { "\($0.name):\($0.age)" })")
    }
}
