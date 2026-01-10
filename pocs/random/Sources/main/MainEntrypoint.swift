@main
struct main {
    static func main() {
        let randomInt = Int.random(in: 1...100)
        let randomDouble = Double.random(in: 0.0...1.0)
        let randomBool = Bool.random()
        print("Random int (1-100): \(randomInt)")
        print("Random double (0-1): \(randomDouble)")
        print("Random bool: \(randomBool)")
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let shuffled = numbers.shuffled()
        let randomElement = numbers.randomElement() ?? 0
        print("Original: \(numbers)")
        print("Shuffled: \(shuffled)")
        print("Random element: \(randomElement)")
    }
}
