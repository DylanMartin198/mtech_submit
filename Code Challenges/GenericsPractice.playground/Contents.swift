import UIKit

func max<T>(_ a: T, _ x: T) -> T where T : Comparable {
    if a == x {
        return true as! T
    } else {
        return false as! T
    }
}


func arrContains<T : Equatable>(a: [T], x: T) -> Bool {
    for item in a {
        if item == x {
            return true
        }
    }
    return false
}


// You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.

// The type of a and x can be String OR Int.

// Return true if the array contains the value, false if not.

//Take note of the wording of this problem. I should be able to pass in either an array of strings or an array of Ints and it will work the same.
