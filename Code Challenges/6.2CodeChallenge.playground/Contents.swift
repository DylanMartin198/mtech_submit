import UIKit

//func sum(num: Int) -> Int {
//    let totalSum = num + 1
//    return totalSum
//}
//
//sum(num: 2)


func sum(num: Int) -> Int {
    if(num == 1) {
        return num
    }
    return num + sum(num: num - 1)
}

sum(num: 8)
