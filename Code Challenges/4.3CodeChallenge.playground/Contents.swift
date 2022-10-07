import UIKit

//var integersA = [2, 2, 3]
//var integersB = [5, 4, 1]
//func differenceInIntegers(array1: [Int], array2: [Int]) -> [Int] {
//    let sum = integersA[0] * integersA[1] * integersA[2]
//    let sum1 = integersB[0] * integersB[1] * integersB[2]
//    if {
//
//    }
//}

func volumeOfACuboid(_ dimensions: [Int]) -> Int? {
    if dimensions.count != 3 {
        return nil
    }
    return dimensions[0] * dimensions[1] * dimensions[2]
}

func differenceInCuboidVolume(a: [Int], b: [Int]) -> Int? {
    if a.count != 3 || b.count != 3 {
     return nil
    }
    
    if let volumeA = volumeOfACuboid(a), let volumeB = volumeOfACuboid(b) {
        return abs(volumeA - volumeB)
    }
    
    return nil
}

