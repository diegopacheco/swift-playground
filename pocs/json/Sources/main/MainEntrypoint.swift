import Foundation

struct User: Codable {
    var name: String
    var age: Int
    var email: String
}

@main
struct main {
    static func main() {
        let user = User(name: "Alice", age: 30, email: "alice@mail.com")
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        if let jsonData = try? encoder.encode(user),
           let jsonString = String(data: jsonData, encoding: .utf8) {
            print("Encoded:\n\(jsonString)")
        }
        let jsonStr = "{\"name\":\"Bob\",\"age\":25,\"email\":\"bob@mail.com\"}"
        if let data = jsonStr.data(using: .utf8),
           let decoded = try? JSONDecoder().decode(User.self, from: data) {
            print("Decoded: \(decoded.name), \(decoded.age)")
        }
    }
}
