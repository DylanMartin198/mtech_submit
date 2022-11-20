import UIKit

func distanceBetweenPillars(numOfPillars: Int, distanceBetween: Int, widthOfPillar: Int) -> Int {
    let distance = distanceBetween * 1000
        guard widthOfPillar >= 0 && widthOfPillar <= 50 else { return 0 }
    guard numOfPillars >= 2 else { return 0 }
    guard distanceBetween >= 10 && distanceBetween <= 30 else { return 0}
    let width = numOfPillars - 2
    var thing = width * widthOfPillar
            
    return (distance + thing)
}
distanceBetweenPillars(numOfPillars: 4, distanceBetween: 15, widthOfPillar: 25)

