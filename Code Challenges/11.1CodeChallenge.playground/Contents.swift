import UIKit

func timeString(from ballCounts: (hr: Int, fiveMin: Int, min: Int)) -> String {
    var minutes = ballCounts.min
    minutes += (ballCounts.fiveMin * 5)
    return "The current time is \(ballCounts.hr):\(minutes < 10 ? "0" + String(minutes) : String(minutes))"
}
timeString(from: (hr: 2, fiveMin: 3, min: 5))
