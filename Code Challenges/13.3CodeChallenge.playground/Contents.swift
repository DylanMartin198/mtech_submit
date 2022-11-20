import UIKit

func willItDivide(n: Int, x: Int, y: Int) -> Bool {
    if n % x == 0 && n % y == 0 {
        return true
    }
    return false
}
willItDivide(n: 4, x: 2, y: 4)
willItDivide(n: 3, x: 2, y: 5)
willItDivide(n: 6, x: 3, y: 2)
willItDivide(n: 12, x: 2, y: 6)
willItDivide(n: 100, x: 5, y: 3)
willItDivide(n: 12, x: 7, y: 5)
