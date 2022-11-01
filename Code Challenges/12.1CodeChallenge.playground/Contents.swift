import UIKit

func wilsonPrimeNum(p: Int) -> Bool {
    if ((p - 1)! + 1) / (p * p){
        return true
    } else {
        return false
    }
}

let new = wilsonPrimeNum(p: 2)
