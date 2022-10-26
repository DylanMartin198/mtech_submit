import UIKit

extension String {
    func isPalindrome() -> Bool {
        let reverseString = String(strings.array.characters.reversed())
        if(strings != "" && phrases == reverseString) {
            return true
        } else {
            return false
        }
    }
}

//let strings = ["racecar", "daD", "golf", "jury", "mom"]
//
//for string in strings {
//    print("\(string) - \(string.isPalindrome())")
//}
//
//let phrases = ["Too bad I hid a boot", "Taco Cat", "Totally not a palindrome"]
//
//for phrase in phrases {
//    print("\(phrase) - \(phrase.isPalindrome())")
//}
