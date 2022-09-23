import UIKit


func clock(hours: Int, minutes: Int, seconds: Int) -> Int {
    let milliseconds = seconds * 1_000
    let milliminutes = milliseconds * 60
    let millihours = hours * 600_000
    return millihours + milliminutes + milliseconds
}
clock(hours: 0, minutes: 1, seconds: 1)
clock(hours: 0, minutes: 2, seconds: 3)
clock(hours: 1, minutes: 0, seconds: 0)
clock(hours: 1, minutes: 1, seconds: 1)
