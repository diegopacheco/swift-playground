import Foundation

@main
struct main {
    static func main() {
        let uuid1 = UUID()
        let uuid2 = UUID()
        print("UUID 1: \(uuid1)")
        print("UUID 2: \(uuid2)")
        print("UUID string: \(uuid1.uuidString)")
        if let parsed = UUID(uuidString: uuid1.uuidString) {
            print("Parsed UUID: \(parsed)")
            print("Same as original: \(parsed == uuid1)")
        }
    }
}
