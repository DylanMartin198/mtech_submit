import UIKit

// You are in the midst of organizing all of your coding projects. It's a mess! Every file you've ever created is located in the same folder.

// To clean it up, you've decided that you will use one of two organization methods.

// The prefix method: You will group all files with the same project name under the same folder.
// The suffix method: You will group all files with the same extension under the same folder.
// Create a function that takes in the current folder sorts the files according to the organization method (prefix or suffix). A folder is a grouping of files in the same array.

// Examples
// Sorting by project name (ex1 and ex2)
// cleanUp(["ex1.html", "ex1.js", "ex2.html", "ex2.js"], "prefix") ➞ [
//   ["ex1.html", "ex1.js"],
//   ["ex2.html", "ex2.js"]
// ]

// Sorting by extension (.html and .js)
// cleanUp(["ex1.html", "ex1.js", "ex2.html", "ex2.js"], "suffix") ➞ [
//   ["ex1.html", "ex2.html"],
//   ["ex1.js", "ex2.js"]
// ]

// cleanUp(["music_app.js", "music_app.png", "music_app.wav", "tetris.png", "tetris.js"], "prefix") ➞ [
//   ["music_app.js", "music_app.png", "music_app.wav"],
//   ["tetris.png", "tetris.js"]
// ]

// cleanUp(["_1.rb", "_2.rb", "_3.rb", "_4.rb"], "suffix") ➞ [
//   ["_1.rb", "_2.rb", "_3.rb", "_4.rb"]
// ]

// cleanUp(["_1.rb", "_2.rb", "_3.rb", "_4.rb"], "prefix") ➞ [
//   ["_1.rb"], ["_2.rb"],
//   ["_3.rb"], ["_4.rb"]
// ]

// Notes
// Keep elements in the same relative order.


func cleanUp(str: [String]) -> [String] {
    let split = str.split(separator: " ")
    var array = ""
    for value in str {
        if value.contains(".jpeg") {
            array.append(value)
        } else if value.contains(".rb") {
            array.append(value)
        } else if value.contains(".js") {
            array.append(value)
        } else if value.contains(".png") {
            array.append(value)
        } else if value.contains("html") {
            array.append(value)
        }
        return [array]
    }
    
    
    return [array]
}

cleanUp(str: ["ex1.html", "ex1.js",
   "ex2.html", "ex2.js"])
