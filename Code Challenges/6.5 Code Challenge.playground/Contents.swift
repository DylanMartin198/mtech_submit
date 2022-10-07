import UIKit

func average(array: [Int]) -> Int {
    
    let numbersInArray = array.count
    
    for _ in array {
        let numbers = array
        let sum = numbers / numbersInArray
        return sum
    }
    return 0
}


average(array: [89, 90, 85])
