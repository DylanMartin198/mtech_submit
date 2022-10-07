import UIKit

func square(sum: [Int]) -> Int {
    var added: Int = 0
    for number in sum {
       added += number * number
        print(added)
    }
    return added
}

square(sum: [2, 2, 3])
