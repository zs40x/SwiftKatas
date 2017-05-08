//: Playground - noun: a place where people can play

import UIKit
import XCTest

var str = "Hello, playground"

enum StringCalculationError: Error {
    case negativeNumber
}

class StringCalculator {
    
    private let seperators = ",\n"
    
    func add(_ numbers: String) throws -> Int {
        
        return try numbers
                .components(separatedBy: CharacterSet(charactersIn: seperators))
                .reduce(0, ({ sum, current in
                    guard let nextInteger = Int(current) else { return sum }
                    
                    if nextInteger < 0 {
                        throw StringCalculationError.negativeNumber
                    }
                
                    return sum + nextInteger
                }))
        
    }
}

class StringCalculatorTest: XCTestCase {
    
    let testInstance = StringCalculator()
    
    func testInitialStringsReturn0() {
        XCTAssertEqual(try testInstance.add(""), 0)
    }
    
    func testAddToStringIntsReturnsSum() {
        XCTAssertEqual(try testInstance.add("1,1"), 2)
    }
    
    func testNonIntegerInStringIsIgnored() {
        XCTAssertEqual(try testInstance.add("1,b,3"), 4)
    }
    
    func testSingleIntegerIsReturned() {
        XCTAssertEqual(try testInstance.add("1"), 1)
    }
    
    func testAddsWithNewLineAsSeperator() {
        XCTAssertEqual(try testInstance.add("2\n2"), 4)
    }
    
    func testNegativeRaisesException() {
        XCTAssertThrowsError(try testInstance.add("0,-1,1"))
    }
}

StringCalculatorTest.defaultTestSuite().run()