import UIKit

func factorial(num: Int) -> Int? {
    var work = num
    switch num {
    case 0:
    work = 1
    case 1:
    work =  1
    case 2:
    work = 1 * 2
    case 3:
    work = 1 * 2 * 3
    case 4:
    work = 1 * 2 * 3 * 4
    default:
        return nil
    }
    return work
}
factorial(num: 3)
