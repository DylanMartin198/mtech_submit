import UIKit


let arrayOfString = ["Bob", "John", "carter"]
var arrayOfInt = [2, 4, 5]

func array(arrayString: [String], arrayInt: [Int]) -> [Any] {
    for _ in arrayString {
        if arrayString == arrayOfString {
             arrayString
            for _ in arrayInt {
                if arrayInt == arrayOfInt {
                    return arrayInt
                }
            }
        }
    }
    return arrayInt
}
array(arrayString: arrayOfString, arrayInt: arrayOfInt)
