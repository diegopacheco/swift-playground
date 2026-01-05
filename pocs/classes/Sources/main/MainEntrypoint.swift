class Animal {
    var name: String
    init(name: String) { self.name = name }
    func speak() -> String { return "..." }
}

class Dog: Animal {
    override func speak() -> String { return "Woof!" }
}

class Cat: Animal {
    override func speak() -> String { return "Meow!" }
}

@main
struct main {
    static func main() {
        let dog = Dog(name: "Rex")
        let cat = Cat(name: "Whiskers")
        print("\(dog.name) says: \(dog.speak())")
        print("\(cat.name) says: \(cat.speak())")
    }
}
