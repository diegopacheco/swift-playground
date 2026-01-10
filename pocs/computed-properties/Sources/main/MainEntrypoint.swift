struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        get { return celsius * 9 / 5 + 32 }
        set { celsius = (newValue - 32) * 5 / 9 }
    }
    var kelvin: Double { return celsius + 273.15 }
}

@main
struct main {
    static func main() {
        var temp = Temperature(celsius: 25)
        print("Celsius: \(temp.celsius)")
        print("Fahrenheit: \(temp.fahrenheit)")
        print("Kelvin: \(temp.kelvin)")
        temp.fahrenheit = 98.6
        print("After setting fahrenheit to 98.6:")
        print("Celsius: \(temp.celsius)")
    }
}
