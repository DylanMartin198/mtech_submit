import UIKit

// Write a function that takes a list of strings as an argument and returns a filtered list containing the same elements but with the 'geese' removed.

// The geese are any strings in the following array
// ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]

// For example, if this array were passed as an argument:
// ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"]

// Your function would return the following array:
// ["Mallard", "Hook Bill", "Crested", "Blue Swedish"]

func filterString(input: [String]) -> [String] {
    let wordsToRemove =   ["Mallard", "Hook Bill", "Crested", "Blue Swedish"]
    var input = input
    input.remove(at: wordsToRemove.startIndex)
    return input
}
filterString(input: ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"])


func filterString1(input: [String]) -> [String] {
    let wordsToRemove =   ["Mallard", "Hook Bill", "Crested", "Blue Swedish"]
    var input = input
    if input.contains(wordsToRemove) {
        input.remove(at: wordsToRemove.index)
    }
    return input
}
filterString(input: ["Mallard", "Hook Bill", "African", "Crested", "Pilgrim", "Toulouse", "Blue Swedish"])
