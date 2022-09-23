import UIKit

func returnEvenNumber(first: Int) -> Int {
    let firstEvenNum = (first - 1) * 2
    return firstEvenNum
}

print(returnEvenNumber(first: 1))
print(returnEvenNumber(first: 100))
