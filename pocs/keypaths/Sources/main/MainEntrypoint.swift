struct Employee {
    var name: String
    var salary: Double
    var department: String
}

func extract<T, V>(_ items: [T], keyPath: KeyPath<T, V>) -> [V] {
    return items.map { $0[keyPath: keyPath] }
}

@main
struct main {
    static func main() {
        let team = [
            Employee(name: "Alice", salary: 90000, department: "Eng"),
            Employee(name: "Bob", salary: 85000, department: "Sales"),
            Employee(name: "Carol", salary: 95000, department: "Eng"),
        ]
        let names = extract(team, keyPath: \.name)
        let salaries = extract(team, keyPath: \.salary)
        print("Names: \(names)")
        print("Salaries: \(salaries)")
        let totalSalary = team.map(\.salary).reduce(0, +)
        print("Total salary: \(totalSalary)")
    }
}
