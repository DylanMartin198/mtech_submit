import UIKit

func camelCased(from snake: String) -> String? {
    guard snake.isEmpty == false else { return "badString" }
    
    var explodedStrings = snake.components(separatedBy: "_")
    var camelCaseString = explodedStrings.removeFirst().lowercased()
    
    
    for string in explodedStrings {
        let firstLetterCap = string.prefix(1).capitalized
        let remainingLetters = string.dropFirst().lowercased()
        
        camelCaseString += firstLetterCap + remainingLetters
    }
    return camelCaseString
}

func toSnakeCase(str: String) {
    
}

camelCased(from: "hello_edabit")
camelCased(from: "helloEdabit")

