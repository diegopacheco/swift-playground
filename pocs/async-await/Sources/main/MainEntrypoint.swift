import Foundation

func fetchData(_ label: String) async -> String {
    do { try await Task.sleep(nanoseconds: 100_000_000) } catch {}
    return "\(label): done"
}

@available(macOS 10.15, *)
@main
struct main {
    static func main() async {
        async let a = fetchData("TaskA")
        async let b = fetchData("TaskB")
        async let c = fetchData("TaskC")
        let results = await [a, b, c]
        for r in results {
            print(r)
        }
        print("All async tasks completed")
    }
}
