import UIKit

func sumAllExceptHighAndLowNum(Array: [Int]) -> [Int]? {
    guard Array.count >= 3 else { return nil }
    var sorting = Array.sorted()
    for _ in Array {
        sorting.removeLast()
        sorting.removeFirst()
    }
    return sorting
}








