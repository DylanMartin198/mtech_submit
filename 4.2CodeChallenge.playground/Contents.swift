import UIKit

//func elementOfArray(notConsecutive: [Int]) -> Int {
//    if ((notConsecutive + 1) != 0) {
//
//    } else if ((notConsecutive + 2) != 0) {
//        print("This is the first not consecutive number")
//    }
//}



func firstNonConsecutiveNumber(in array: [Int]) -> Int? {
    var comparisonNumber = array.first!
    for int in array.dropFirst() {
        if int != comparisonNumber + 1 {
            return int
        } else {
            comparisonNumber = int
        }
        
    }
    return nil
}

firstNonConsecutiveNumber(in: [1,2,3,4,6,7,8])
