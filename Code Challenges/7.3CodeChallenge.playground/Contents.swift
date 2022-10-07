import UIKit

func heron(sideA: Double, sideB: Double, sideC: Double) -> Double {
    let s = sideA + sideB + sideC / 2
    let formula = (s * (s - sideA) * (s - sideB) * (s - sideC)).squareRoot()
    
    return formula
}

heron(sideA: 15, sideB: 2, sideC: 3)
