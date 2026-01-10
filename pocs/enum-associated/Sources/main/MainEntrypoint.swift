enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

enum Result {
    case success(value: Int)
    case failure(error: String)
}

@main
struct main {
    static func main() {
        let productBarcode = Barcode.upc(8, 85909, 51226, 3)
        let websiteCode = Barcode.qrCode("https://swift.org")
        for barcode in [productBarcode, websiteCode] {
            switch barcode {
                case .upc(let ns, let m, let i, let c): print("UPC: \(ns)-\(m)-\(i)-\(c)")
                case .qrCode(let code): print("QR: \(code)")
            }
        }
        let result = Result.success(value: 42)
        if case .success(let value) = result { print("Success: \(value)") }
    }
}
