//: Playground - noun: a place where people can play

import UIKit
import XCTest

var str = "Hello, playground"

class StringCalculator {
    
    func add(_ a: String, _ b: String) -> Int {
        
        return 0
    }
}

class StringCalculatorTest: XCTestCase {
    
    let testInstance = StringCalculator()
    
    func testInitialStringsReturn0() {
        XCTAssertEqual(testInstance.add("", ""), 0)
    }
}

StringCalculatorTest.defaultTestSuite().run()