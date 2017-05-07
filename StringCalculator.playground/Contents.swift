//: Playground - noun: a place where people can play

import UIKit
import XCTest

var str = "Hello, playground"

class StringCalculator {
    
    private let seperator = ","
    
    func add(_ numbers: String) -> Int {
        
        return numbers
            .components(separatedBy: seperator)
            .reduce(0, ({ sum, current in
                    guard let nextInteger = Int(current) else { return sum }
                
                    return sum + nextInteger
                }))
        
    }
}

class StringCalculatorTest: XCTestCase {
    
    let testInstance = StringCalculator()
    
    func testInitialStringsReturn0() {
        XCTAssertEqual(testInstance.add(""), 0)
    }
    
    func testAddToStringIntsReturnsSum() {
        XCTAssertEqual(testInstance.add("1,1"), 2)
    }
    
    func testNonIntegerInStringIsIgnored() {
        XCTAssertEqual(testInstance.add("1,b,3"), 4)
    }
    
    func testSingleIntegerIsReturned() {
        XCTAssertEqual(testInstance.add("1"), 1)
    }
}

StringCalculatorTest.defaultTestSuite().run()