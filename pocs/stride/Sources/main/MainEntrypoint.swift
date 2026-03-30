@main
struct main {
    static func main() {
        print("--- stride to ---")
        for i in stride(from: 0, to: 20, by: 3) {
            print(i, terminator: " ")
        }
        print()
        print("--- stride through ---")
        for i in stride(from: 10, through: 0, by: -2) {
            print(i, terminator: " ")
        }
        print()
        print("--- float stride ---")
        var vals: [Double] = []
        for x in stride(from: 0.0, to: 1.0, by: 0.2) {
            vals.append((x * 100).rounded() / 100)
        }
        print("Floats: \(vals)")
        let evens = stride(from: 2, through: 20, by: 2).map { $0 }
        print("Evens: \(evens)")
    }
}
