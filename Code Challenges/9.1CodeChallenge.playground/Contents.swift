import UIKit

func reverseSort(strings: [String]) -> [String] {
    var array = strings
    array = strings.reversed()
    return array
}
reverseSort(strings: ["1", "2", "3", "4", "5", "6", "7"])
reverseSort(strings: ["9", "8", "7", "6", "5", "4", "3", "2", "1"])

