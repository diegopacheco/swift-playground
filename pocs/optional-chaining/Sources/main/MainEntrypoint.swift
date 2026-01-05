struct Address {
    var city: String
}

struct Person {
    var name: String
    var address: Address?
}

@main
struct main {
    static func main() {
        let john = Person(name: "John", address: Address(city: "New York"))
        let jane = Person(name: "Jane", address: nil)

        print("John's city: \(john.address?.city ?? "Unknown")")
        print("Jane's city: \(jane.address?.city ?? "Unknown")")
        print("John city uppercase: \(john.address?.city.uppercased() ?? "N/A")")
    }
}
