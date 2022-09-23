import UIKit

//func positive(array: [Int]) -> Int? {
//    for index in array {
//        if index >= 0 {
//            return index
//        } else {
//            return nil
//        }
//    }
//}

let numbers = [1, -4, 7, 12]

func addPositiveIntegers(arr: [Int]) -> Int {
    var returnNum = 0
    for num in arr {
        returnNum += num > 0 ? num: 0
    }
    return returnNum
}

print(addPositiveIntegers(arr: numbers))
