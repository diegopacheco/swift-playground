struct Coordinate: Hashable {
    var x: Int
    var y: Int
}

@main
struct main {
    static func main() {
        let a = Coordinate(x: 1, y: 2)
        let b = Coordinate(x: 3, y: 4)
        let c = Coordinate(x: 1, y: 2)
        print("a == c: \(a == c)")
        print("a == b: \(a == b)")
        var visited: Set<Coordinate> = []
        visited.insert(a)
        visited.insert(b)
        visited.insert(c)
        print("Unique visited: \(visited.count)")
        var grid: [Coordinate: String] = [:]
        grid[a] = "start"
        grid[b] = "end"
        print("Grid[\(a)] = \(grid[a]!)")
        print("Hash a: \(a.hashValue), Hash c: \(c.hashValue)")
    }
}
