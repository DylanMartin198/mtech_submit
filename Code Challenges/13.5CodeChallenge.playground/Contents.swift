import UIKit


func powOfTwo(n: Int) -> Double {
//    for number in n {
//        if number.count > 0 {
//            let pow = pow(number, 2)
//        }
//    }
    let power = pow(Double(n), 2.0)
    return power
}

powOfTwo(n: 2)
powOfTwo(n: 1)
powOfTwo(n: 0)
