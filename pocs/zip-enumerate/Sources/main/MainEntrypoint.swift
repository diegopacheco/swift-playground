@main
struct main {
    static func main() {
        let names = ["Alice", "Bob", "Carol"]
        let scores = [95, 87, 92]
        let grades = ["A", "B+", "A-"]
        print("--- zip ---")
        for (name, score) in zip(names, scores) {
            print("\(name): \(score)")
        }
        print("--- zip3 ---")
        for ((name, score), grade) in zip(zip(names, scores), grades) {
            print("\(name): \(score) (\(grade))")
        }
        print("--- enumerated ---")
        for (index, name) in names.enumerated() {
            print("#\(index + 1): \(name)")
        }
        let dict = Dictionary(uniqueKeysWithValues: zip(names, scores))
        print("Dict: \(dict)")
    }
}
