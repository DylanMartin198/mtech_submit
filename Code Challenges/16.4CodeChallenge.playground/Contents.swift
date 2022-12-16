import UIKit

func doubleInput(input: String) -> String {
    var doubledString = ""
    for character in input {
        doubledString += "\(character)\(character)"
    }
    return doubledString
}
doubleInput(input: "Hello World")
