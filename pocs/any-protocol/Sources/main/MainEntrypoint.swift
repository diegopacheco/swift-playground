protocol Animal {
    var name: String { get }
    func speak() -> String
}

struct Dog: Animal {
    var name: String
    func speak() -> String { return "\(name) says Woof!" }
}

struct Cat: Animal {
    var name: String
    func speak() -> String { return "\(name) says Meow!" }
}

func loudest(_ animal: any Animal) -> String {
    return animal.speak().uppercased()
}

func makeAnimal(type: String) -> some Animal {
    return Dog(name: type)
}

@main
struct main {
    static func main() {
        let pets: [any Animal] = [Dog(name: "Rex"), Cat(name: "Whiskers"), Dog(name: "Buddy")]
        for pet in pets {
            print(pet.speak())
        }
        print(loudest(Cat(name: "Luna")))
        let animal = makeAnimal(type: "Max")
        print("Opaque: \(animal.speak())")
    }
}
