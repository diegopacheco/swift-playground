struct Card {
    enum Suit: String {
        case spades, hearts, diamonds, clubs
    }
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
    }
    let suit: Suit
    let rank: Rank
    var description: String { return "\(rank) of \(suit)" }
}

@main
struct main {
    static func main() {
        let aceOfSpades = Card(suit: .spades, rank: .ace)
        let queenOfHearts = Card(suit: .hearts, rank: .queen)
        print(aceOfSpades.description)
        print(queenOfHearts.description)
        print("Ace raw value: \(Card.Rank.ace.rawValue)")
        print("Suit: \(Card.Suit.hearts.rawValue)")
    }
}
