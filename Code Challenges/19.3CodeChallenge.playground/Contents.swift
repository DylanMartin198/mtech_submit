import UIKit

func ASCIIValues(arr: String) -> String {
    let a = "\u{97}"
    let e = "\u{101}"
    let i = "\u{105}"
    let o = "\u{111}"
    let u = "\u{117}"
    let vowels = a + e + i + o + u
    
    if arr.lowercased() == vowels {
        return vowels
    }
    
    return arr
}
ASCIIValues(arr: "a")
