//
//  NumberController.swift
//  TempProjectTests
//
//  Created by Dylan Martin on 1/3/23.
//

import Foundation


struct NumberController {
    static func evenNumbers(numbers: [Int]) -> [Int] {
         return numbers.filter { $0 % 2 == 0 }
    }
    
    static func oddNumbers(numbers: [Int]) -> [Int] {
        return numbers.filter { $0 % 2 == 1}
    }
    
    static func sumNumbers(numbers: [Int]) -> Int {
        var sum = 0
        for num in 0..<numbers.count {
            sum += numbers[num]
        }
        return sum
    }
}

