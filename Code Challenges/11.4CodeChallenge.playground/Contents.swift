import UIKit

func countAndSum(integers: [Int]) -> [Int]? {
    var negative = 0
    var postive = 0
    for number in integers {
        if number > 0 {
            postive += 1
        } else if number < 0 {
            negative += number
        }
    }
    return [postive, negative]
}

var integers = countAndSum(integers: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])
