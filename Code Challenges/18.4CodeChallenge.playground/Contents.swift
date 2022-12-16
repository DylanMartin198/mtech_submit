import UIKit

func removeExclamationMark(input: String) -> String {
    let mark = "!"
    if input.contains(mark) {
        for Input in input {
            Input.remove(at: input.index(before: input.endIndex))
        }
    }
    return input
}


func removeExlamactionMark1(input: String) -> String {
    
}
