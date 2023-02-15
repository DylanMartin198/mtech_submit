import UIKit

func findGCD(_ num1: Int, _ num2: Int) -> Int {
   var x = 0
   var y: Int = max(num1, num2)
   var z: Int = min(num1, num2)

   while z != 0 {
      x = y
      y = z
      z = x % y
   }
   return y
}

// Function to find lcm of two numbers
func findLCM(_ n1: Int, _ n2: Int)->Int{
   return (n1 * n2/findGCD(n1, n2))
}

findLCM(9, 18)
findLCM(8, 5)
findLCM(17, 11)


