import UIKit
import Darwin

let numbers = [1, 2, 3, 4, 5]

func numbersMultiply(numbers: Int) -> Int{
    let newNumbers = numbers * 5
    return newNumbers
}

print(numbersMultiply)
print(numbers[0])
print(numbersMultiply(numbers: 1))
