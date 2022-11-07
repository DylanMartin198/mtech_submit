import UIKit

func power(arr: [Int], N: Int) -> Int? {
//    guard N <= arr.count - 1 else { return nil }
    for _ in arr {
        if N <= arr.count - 1 {
            return N * arr.count
        } else {
            return nil
        }
       
    }
    return N
}
power(arr: [1, 2, 3, 4], N: 2)
