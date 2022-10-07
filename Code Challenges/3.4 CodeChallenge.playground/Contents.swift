import UIKit

var newString = ""
func replaceDigits(replacing: String) -> String {
    for char in replacing {
        if let intValue =  char.wholeNumberValue {
            if intValue < 5 {
                newString += "0"
            } else if intValue >= 5 {
                newString += "1"
                
            }
        }
    }
    return newString
}
let result = replaceDigits(replacing: "123456789")

print(result)
