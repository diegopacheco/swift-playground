func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }
    if n == 2 { return true }
    if n % 2 == 0 { return false }
    var i = 3
    while i * i <= n {
        if n % i == 0 { return false }
        i += 2
    }
    return true
}

@main
struct main {
    static func main() {
        print("Checking primes from 1 to 30:")
        let primes = (1...30).filter { isPrime($0) }
        print("Primes: \(primes)")
        print("Is 97 prime? \(isPrime(97))")
        print("Is 100 prime? \(isPrime(100))")
    }
}
