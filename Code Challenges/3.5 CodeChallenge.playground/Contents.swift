import UIKit

var newArray = [1, 4, 7, 9]

func method(arrayInts: [Int]) -> [Int] {
    for number in arrayInts {
        if ((number / number) != 0) {
            number * number
        } else if ((number * number) != 0) {
            number / number
        }
    }
    return newArray
}


