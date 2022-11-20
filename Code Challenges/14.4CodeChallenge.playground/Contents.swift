import UIKit

func close_compare(a: Int, b: Int, margin: Int?) -> Int {
    if a == b {
        return 0
    } else if a < b {
        return -1
    } else if a > b {
        return 1
    }
    return 0
}
close_compare(a: 1, b: 1, margin: 0)
close_compare(a: 2, b: 1, margin: 0)
close_compare(a: 0, b: 1, margin: 0)
