import UIKit

// Create a function that is a Hashtag Generator by using the following rules:

// The output must start with a hashtag (#).
// Each word in the output must have its first letter capitalized.
// If the final result, a single string, is longer than 140 characters, the function should return nil.
// If either the input (str) or the result is an empty string, the function should return nil.

// Examples
// generateHashtag("    Hello     World   " ) ➞ "#HelloWorld"

// generateHashtag("") ➞ nil, "Expected an empty string to return nil"

// generateHashtag("Coding is fun") ➞ "#CodingIsFun", "Should remove spaces and capitalize."

func generateHashtag(str: String) -> String? {
    if str == "" {
        return nil
    } else {
        var str = str
        str.insert("#", at: str.startIndex)
        var stringCapitalized = str.lowercased().capitalized
        let formatedString = stringCapitalized.replacingOccurrences(of: " ", with: "")
        if formatedString == "" || formatedString.count > 140 {
            return nil
        } else {
            return formatedString
        }
    }
}

generateHashtag(str: "Coding is fun")
generateHashtag(str: "  Hello    World     ")
generateHashtag(str: "")
generateHashtag(str: "ddasjdfla;sjdfkljasdl;fjsaldfj;asjkldfj;asdlfjsladkfj;asldfkj;asldkfj;saldfjlsdfjladj;l;jflkasjd;lkfas;dkfjlsadfjalkj;fas;djflsa;jdfjsa;dlfkasfd")

