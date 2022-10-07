import UIKit

//let alternating = 6
//
//func alternating(size: Int) -> String {
//    switch alternating(size: ) {
//    case 6:
//        print("101010")
//    case 4:
//        print("1010")
//    case 12:
//        print("101010101010")
//    default:
//        print("1")
//    }
//}

//func alternating(size: Int) -> String {
//    for number in size {
//        if size += 1 {
//            print("10")
//        }else {
//            print("0")
//        }
//    }
//}


//func stringy(size: Int) -> String {
//    if size == 2 {
//        print("10")
//    }else if size == 4 {
//        print("1010")
//    } else if size == 6 {
//        print("101010")
//    }
//    return ""
//}

func stringy(size: Int) -> String {
    var ones = ""
    for index in 1...size {
        if index % 2 == 0 {
            ones.append("0")
        }else {
            ones.append("1")
        }
    }
    print(ones)
    return ones
}
