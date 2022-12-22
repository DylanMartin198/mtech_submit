import UIKit

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    guard array.count >= 4 else { return 0 }
    var sortedArray = array.sorted()
    var sum = sortedArray[0] + sortedArray[1]
    return sum
}
sumOfTwoSmallestIntegersIn([19, 5, 42, 2, 77])
sumOfTwoSmallestIntegersIn([10, 343445353, 3453445, 34535545353453])
