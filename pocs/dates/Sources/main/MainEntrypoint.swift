import Foundation

@main
struct main {
    static func main() {
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        print("Now: \(formatter.string(from: now))")
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: now)!
        print("Tomorrow: \(formatter.string(from: tomorrow))")
        let components = Calendar.current.dateComponents([.year, .month, .day], from: now)
        print("Year: \(components.year!), Month: \(components.month!), Day: \(components.day!)")
    }
}
