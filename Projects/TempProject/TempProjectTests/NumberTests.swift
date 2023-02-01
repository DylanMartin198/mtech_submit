//
//  NumberTests.swift
//  TempProjectTests
//
//  Created by Dylan Martin on 1/3/23.
//

import XCTest
@testable import TempProject

final class NumberTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_evenNum_MixedInput() {
       let numbers =  NumberController.evenNumbers(numbers: [1, 2, 3, 4])
        XCTAssert(numbers == [2, 4])
    }
    
    func test_evenNum_Empty() {
        let result = NumberController.evenNumbers(numbers: [])
        XCTAssertNotNil(result == [])
    }
    
    func test_evenNum_AllEvenInput() {
        let numbers = NumberController.evenNumbers(numbers: [2, 4, 6, 16])
        XCTAssert(numbers == [2, 4, 6, 16])
    }
    
    func test_evenNum_AllOddInput() {
        let numbers = NumberController.evenNumbers(numbers: [1, 3, 5, 7])
        XCTAssert(numbers == [])
    }
    
    // extra tests
    
    func test_oddNum_MixedInput() {
        let numbers = NumberController.oddNumbers(numbers: [1, 2, 3, 4])
        XCTAssert(numbers == [1, 3])
    }
    
    
    func test_numberSum_ReturnSum() {
        let numbers = NumberController.sumNumbers(numbers: [25, 100, 35, 15])
        XCTAssert(numbers == 175)
    }
    
    func test_numberSum_negativeNumbers() {
        let numbers = NumberController.sumNumbers(numbers: [-34, 11, -12, 45])
        XCTAssert(numbers == 10)
    }
    
    
    func test_numberSum_NoNumbers() {
        XCTAssertNotNil(NumberController.sumNumbers(numbers: []))
    }
    

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
