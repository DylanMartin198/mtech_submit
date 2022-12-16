import UIKit

// I have a cat and a dog.

// I got them at the same time as a kitten/puppy. That was humanYears years ago.

// Return their respective ages now as [humanYears,catYears,dogYears]

// NOTES:

// humanYears >= 1
// humanYears are whole numbers only

// Cat Years
// 15 cat years for first year
// +9 cat years for second year
// +4 cat years for each year after that

// Dog Years
// 15 dog years for first year
// +9 dog years for second year
// +5 dog years for each year after that

func animalYears(humanYears: Int) -> [Int] {
    var dogYears = humanYears + 5
    var catYears = humanYears + 4
    if humanYears == 1 && humanYears == 1 {
        _ = dogYears + 15
        _ = catYears + 15
    } else if humanYears >= 2 && humanYears >= 2 {
        _ = dogYears + 24
        _ = catYears + 24
    } else if humanYears >= 0 {
            dogYears + 5
            catYears + 5
        }
    return [humanYears, dogYears, catYears]
}

animalYears(humanYears: 5)
