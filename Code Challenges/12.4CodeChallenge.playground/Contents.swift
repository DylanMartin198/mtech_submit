import UIKit

func listOfMultiples(num1: Int, num2: Int) -> [Int] {
//    return num1.isMultiple(of: num2)
    var multiples = [Int]()
    for num in num1...num2 {
        if Double(num / num2) == (Double(num) / Double(num2)) {
            multiples.append(num)
        }
    }
    return multiples
    
}


listOfMultiples(num1: 2, num2: 6)
