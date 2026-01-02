// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct main {
    static func main() {
        typealias AudioSample = UInt16
        let maxAmplitudeFound = AudioSample.min
        print("The minimum value of AudioSample is \(maxAmplitudeFound)")
    }
}
