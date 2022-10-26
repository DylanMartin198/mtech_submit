import UIKit

func phoneNumber(number: String) -> String? {
    if number.count == 12 {
        return number
    } else {
        return nil
    }
}
phoneNumber(number: "555-234-2343")
phoneNumber(number: "555-234-23426")
