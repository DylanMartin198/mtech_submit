import UIKit

func reverseString(input: String) -> String {
    return String(input.reversed())
}
reverseString(input: "john McClane")


func reverseString1(input: String) -> String {
    return input.split(separator: " ").reversed().joined(separator: " ")
}
reverseString1(input: "john McClane")
