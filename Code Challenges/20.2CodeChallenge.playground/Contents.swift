import UIKit

func splitNCases(str: String, cases: Int) -> String? {
    if str.count >= 0 {
        var results = str.split(separator: "", maxSplits: cases)
    }
    return str
}

splitNCases(str: "Strengthened", cases: 6)
//splitNCases(str: "Unscrupulous", cases: 2)
//splitNCases(str: "Flavorless", cases: 1)


//func splitNCases(_ str: String, _ cases: Int) -> [String]? {
//    guard str.count % cases == 0 else { return nil }
//    let charsPerIndex = str.count / cases
//    var splitStr: [String] = []
//    for num in 0..<cases {
//        let start = str.index(str.startIndex, offsetBy: num*charsPerIndex)
//        let end = str.index(str.startIndex, offsetBy: num*charsPerIndex+2)
//        splitStr.append(String(str[start..<end]))
//    }
//    return splitStr
//}
//
//print(splitNCases("Strengthened", 6))
