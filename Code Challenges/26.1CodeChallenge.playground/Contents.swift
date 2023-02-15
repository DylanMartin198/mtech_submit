import UIKit

func fibSeq(_ n: Int) -> Int? {
    guard n >= 0 else { return nil }
    var num1 = 0
    var num2 = 1
    
    for _ in 0..<n {
        let num = num1 + num2
        num1 = num2
        num2 = num
        
        if num == 0 {
            return 0
        }
        
        print("\(num2)")
    }
    return num2
    
}

fibSeq(5)
