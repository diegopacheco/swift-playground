enum Direction {
    case north, south, east, west
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars
}

@main
struct main {
    static func main() {
        let heading = Direction.north
        print("Heading: \(heading)")

        let earth = Planet.earth
        print("Earth is planet number: \(earth.rawValue)")

        if let planet = Planet(rawValue: 4) {
            print("Planet 4 is: \(planet)")
        }
    }
}
