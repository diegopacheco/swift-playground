class Vehicle {
    var speed: Int
    init(speed: Int) { self.speed = speed }
}

class Car: Vehicle {
    var doors: Int
    init(speed: Int, doors: Int) { self.doors = doors; super.init(speed: speed) }
}

class Bike: Vehicle {
    var hasGears: Bool
    init(speed: Int, hasGears: Bool) { self.hasGears = hasGears; super.init(speed: speed) }
}

@main
struct main {
    static func main() {
        let vehicles: [Vehicle] = [Car(speed: 120, doors: 4), Bike(speed: 30, hasGears: true), Car(speed: 200, doors: 2)]
        for v in vehicles {
            if v is Car { print("Found a car at speed \(v.speed)") }
            if let bike = v as? Bike { print("Bike has gears: \(bike.hasGears)") }
        }
        let cars = vehicles.compactMap { $0 as? Car }
        print("Cars count: \(cars.count)")
        let items: [Any] = [42, "hello", 3.14, true]
        for item in items {
            switch item {
            case let i as Int: print("Int: \(i)")
            case let s as String: print("String: \(s)")
            case let d as Double: print("Double: \(d)")
            case let b as Bool: print("Bool: \(b)")
            default: print("Unknown")
            }
        }
    }
}
