@main
struct main {
    static func main() {
        let a: UInt8 = 0b1100_1010
        let b: UInt8 = 0b1010_1100
        print("a      = \(String(a, radix: 2).paddingLeft(toLength: 8))")
        print("b      = \(String(b, radix: 2).paddingLeft(toLength: 8))")
        print("a & b  = \(String(a & b, radix: 2).paddingLeft(toLength: 8))")
        print("a | b  = \(String(a | b, radix: 2).paddingLeft(toLength: 8))")
        print("a ^ b  = \(String(a ^ b, radix: 2).paddingLeft(toLength: 8))")
        print("~a     = \(String(~a, radix: 2).paddingLeft(toLength: 8))")
        print("a << 2 = \(a << 2)")
        print("a >> 2 = \(a >> 2)")
        let flags: UInt8 = 0b0000_0101
        let hasRead = flags & 0b0001 != 0
        let hasWrite = flags & 0b0010 != 0
        let hasExec = flags & 0b0100 != 0
        print("Read: \(hasRead), Write: \(hasWrite), Exec: \(hasExec)")
    }
}

extension String {
    func paddingLeft(toLength length: Int) -> String {
        let padding = length - self.count
        guard padding > 0 else { return self }
        return String(repeating: "0", count: padding) + self
    }
}
