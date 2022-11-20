import UIKit

let okayDigits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
var copy = okayDigits

func doesStringHaveDigit(input: Int) -> Bool {
    let hasDigits = okayDigits.contains(where: { $0.input == copy})
//    if input == okayDigits {
//        return true
//    } else {
//        return false
//    }
}

doesStringHaveDigit(input: 1)
