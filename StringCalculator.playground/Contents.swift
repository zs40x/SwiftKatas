//: Playground - noun: a place where people can play

import UIKit
import XCTest

var str = "Hello, playground"

class StringCalculator {
    
    func add(_ a: String, _ b: String) -> Int {
        
        guard let intA = Int(a) else { return 0 }
        guard let intB = Int(b) else { return 0 }
        
        return intA + intB
    }
}

class StringCalculatorTest: XCTestCase {
    
    let testInstance = StringCalculator()
    
    func testInitialStringsReturn0() {
        XCTAssertEqual(testInstance.add("", ""), 0)
    }
    
    func testAddToStringIntsReturnsSum() {
        XCTAssertEqual(testInstance.add("1", "1"), 2)
    }
}

StringCalculatorTest.defaultTestSuite().run()