import UIKit

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
   let average = (s1 + s2 + s3) / 3
    var returnMessage = ""
    switch average {
    case 90...100:
        returnMessage = "\(average): A"
    case 80...89:
        returnMessage = "\(average): B"
    case 70...79:
        returnMessage = "\(average): C"
    case 60...69:
        returnMessage = "\(average): D"
        default:
        returnMessage = "\(average): F"
    }
    return returnMessage
}
print(getGrade(70, 80, 89))
