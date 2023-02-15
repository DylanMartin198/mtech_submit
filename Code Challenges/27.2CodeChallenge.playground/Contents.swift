import UIKit

func additivePersistence(_ array: [Int]) -> Int {
    var answer = 0
    var stringArray = "\(array)"
    
    for sum in array {
        answer += sum
    }
    var str2 = String(array).components(separatedBy: " ")
    var answer2 = str2[0] += str2[1]
    
    answer2.components(separatedBy: " ")
    var finalanswer = answer2[0] += answer2[1]
    
    return finalanswer
}

additivePersistence([1, 6, 7, 9, 5, 8, 3])
