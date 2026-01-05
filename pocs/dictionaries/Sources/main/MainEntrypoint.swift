@main
struct main {
    static func main() {
        var capitals: [String: String] = ["USA": "Washington", "France": "Paris"]
        capitals["Japan"] = "Tokyo"
        capitals["Brazil"] = "Brasilia"
        for (country, capital) in capitals {
            print("\(country): \(capital)")
        }
        let usa = capitals["USA"] ?? "Unknown"
        print("USA capital: \(usa)")
    }
}
