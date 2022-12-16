import UIKit

func shortLongShort(a: String, b: String) -> String {
    var remove = a
    remove.removeLast()
    return ("\(remove)\(b)\(remove)")
}
shortLongShort(a: "11", b: "22")
shortLongShort(a: "22", b: "44")
shortLongShort(a: "13", b: "35")
shortLongShort(a: "11", b: "456")
shortLongShort(a: "111", b: "34")
