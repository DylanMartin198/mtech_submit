import UIKit

func getAverage(arr: [Int]) -> Bool {
    let myScore = 90
    let average = arr * arr / arr.count
    for average in arr {
        if average > myScore {
            return true
        } else {
            return false
        }
    }
}

