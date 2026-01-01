// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct main {
    static func main() {
        let environment = "development"
        let maximumNumberOfLoginAttempts: Int

        if environment == "development" {
            maximumNumberOfLoginAttempts = 100
        } else {
            maximumNumberOfLoginAttempts = 10
        }

        print("Environment: \(environment)")
        print("Maximum number of login attempts: \(maximumNumberOfLoginAttempts)")
    }
}
