struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    subscript(row: Int, col: Int) -> Double {
        get { return grid[(row * columns) + col] }
        set { grid[(row * columns) + col] = newValue }
    }
}

@main
struct main {
    static func main() {
        var matrix = Matrix(rows: 2, columns: 3)
        matrix[0, 0] = 1.0; matrix[0, 1] = 2.0; matrix[0, 2] = 3.0
        matrix[1, 0] = 4.0; matrix[1, 1] = 5.0; matrix[1, 2] = 6.0
        print("Matrix[0,1] = \(matrix[0, 1])")
        print("Matrix[1,2] = \(matrix[1, 2])")
    }
}
