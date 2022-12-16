import UIKit

func removeNumbers(input: String) -> String {
//    var digits = "1, 2, 3, 4, 5, 6, 7, 8, 9, 0"
//    var input = input
//    var goodString = input.remove(at: )
//    return goodString
    
    input.components(separatedBy: CharacterSet.decimalDigits).joined()
    
}
removeNumbers(input: "Hell0o Wo1rld")
