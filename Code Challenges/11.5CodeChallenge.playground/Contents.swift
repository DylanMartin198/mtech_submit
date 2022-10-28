import UIKit

func prime(number: Int) -> Bool {
    if number % number == 0 {
        return true
    } else {
        return false
    }
}
prime(number: 2)
prime(number: 9)
