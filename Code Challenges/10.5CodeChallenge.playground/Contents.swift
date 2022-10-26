import UIKit

func returnStringsWithS(array: [String]) -> [String]? {
    for _ in array {
        if array.contains("'") {
            return array
        } else {
            return nil
        }
    }
    return array
}
returnStringsWithS(array: ["The hobbit", "it's"])
