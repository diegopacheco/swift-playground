@main
struct main {
    static func main() {
        var colors: Set<String> = ["Red", "Green", "Blue"]
        colors.insert("Yellow")
        colors.insert("Red")
        let otherColors: Set<String> = ["Blue", "Purple"]
        let union = colors.union(otherColors)
        let intersection = colors.intersection(otherColors)
        print("Colors: \(colors)")
        print("Union: \(union)")
        print("Intersection: \(intersection)")
    }
}
