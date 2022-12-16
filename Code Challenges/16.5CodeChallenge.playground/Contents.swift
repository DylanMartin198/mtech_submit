import UIKit

func reorderSum(input: [Int]) -> Int {
    guard input.count > 1 else { return 0 }
    var input = input
    input.sort(by: >)
    return ((input[0] - input[1]) + (input[1] - input[2]))
}
reorderSum(input: [1, 2, 10])

