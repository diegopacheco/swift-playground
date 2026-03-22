struct Temperature: Comparable {
    var celsius: Double
    var fahrenheit: Double { celsius * 9 / 5 + 32 }
    static func < (lhs: Temperature, rhs: Temperature) -> Bool {
        return lhs.celsius < rhs.celsius
    }
}

@main
struct main {
    static func main() {
        let temps = [
            Temperature(celsius: 100),
            Temperature(celsius: 0),
            Temperature(celsius: 37),
            Temperature(celsius: -40),
        ]
        let sorted = temps.sorted()
        for t in sorted {
            print("\(t.celsius)C = \(t.fahrenheit)F")
        }
        let hottest = temps.max()!
        let coldest = temps.min()!
        print("Hottest: \(hottest.celsius)C")
        print("Coldest: \(coldest.celsius)C")
    }
}
