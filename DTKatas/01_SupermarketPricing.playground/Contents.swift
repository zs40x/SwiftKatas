//: Playground - noun: a place where people can play
//# Supermarket pricing Kata - http://codekata.com/kata/kata01-supermarket-pricing/

import Foundation
import XCTest


let testObserver = TestObserver()
XCTestObservationCenter.shared.addTestObserver(testObserver)
SupermarketPricingTests.defaultTestSuite.run()
