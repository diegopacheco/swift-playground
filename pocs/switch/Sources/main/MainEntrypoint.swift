@main
struct main {
    static func main() {
        let grade = 85
        switch grade {
            case 90...100: print("Grade: A")
            case 80..<90: print("Grade: B")
            case 70..<80: print("Grade: C")
            case 60..<70: print("Grade: D")
            default: print("Grade: F")
        }

        let char: Character = "a"
        switch char {
            case "a", "e", "i", "o", "u": print("\(char) is a vowel")
            default: print("\(char) is a consonant")
        }
    }
}
