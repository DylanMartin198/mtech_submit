import UIKit

func multiplicationTable(integerIn10: Int, numberToBeMultiplied: Int) -> String {
    let answer = integerIn10 * numberToBeMultiplied
    switch integerIn10 {
    case 0...1:
        print("\(integerIn10) * \(numberToBeMultiplied) = \(answer)")
    default:
        print("Enter something else")
    }
    return ""
}
multiplicationTable(integerIn10: 1, numberToBeMultiplied: 5)

