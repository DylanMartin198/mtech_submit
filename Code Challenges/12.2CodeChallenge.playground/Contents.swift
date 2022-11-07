import UIKit

func removeSpaces(string: String) -> String {
    return string.replacingOccurrences(of: " ", with: "")
}
removeSpaces(string: "Hello world")
