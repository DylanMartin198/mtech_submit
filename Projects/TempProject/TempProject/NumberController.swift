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
}

