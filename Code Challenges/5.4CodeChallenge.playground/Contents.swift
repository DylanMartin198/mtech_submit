import UIKit

//func returnCentury(year: Int) -> Int? {
//    switch year {
//    case 1...100:
//        print("You are in the first century")
//    case 101...200:
//        print("You are in the second century")
//    case 201...300:
//        print("You are in the third century")
//    default:
//        return nil
//    }
//    return year
//}
//returnCentury(year: 150)


func returnCentury(year: Int) -> Int {
    year / 100
}
print(returnCentury(year: 500))
print(returnCentury(year: 2000))
