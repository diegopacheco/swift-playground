class DataLoader {
    lazy var data: [Int] = {
        print("Loading data...")
        return [1, 2, 3, 4, 5]
    }()
    var name: String
    init(name: String) { self.name = name }
}

@main
struct main {
    static func main() {
        let loader = DataLoader(name: "MyLoader")
        print("Loader created: \(loader.name)")
        print("Accessing data first time:")
        print("Data: \(loader.data)")
        print("Accessing data second time:")
        print("Data: \(loader.data)")
    }
}
