import UIKit

func upperCassed(input: String) -> Bool {
    return input == input.uppercased()
}
upperCassed(input: "DOG")
upperCassed(input: "dog")
upperCassed(input: "Dog")
