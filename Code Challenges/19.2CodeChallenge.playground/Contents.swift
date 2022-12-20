import UIKit

func multiplesSum(_ multiple: Int, _ maxAmount: Int) -> Int? {
    guard multiple >= 0 && maxAmount >= 0 else { return nil }
    var total = 0
    var runningMultiple = multiple
    
    while runningMultiple < maxAmount {
        total += runningMultiple
        runningMultiple += multiple
    }
    
    return total
}

multiplesSum(2, 9)
multiplesSum(3, 13)
multiplesSum(4, 123)
multiplesSum(4, -7)

func sumEvenNum(n: Int, m: Int) -> Int {
   var sum = 0
   print("Even numbers from 0 to \(n):")
   for j in 0...n {

      if j % 2 == 0 {

         sum += j
         print(j, terminator: " ,")
      }
   }
   return sum
}


