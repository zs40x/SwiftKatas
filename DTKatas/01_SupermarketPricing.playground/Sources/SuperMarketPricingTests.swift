import Foundation
import XCTest

public class SupermarketPricingTests: XCTestCase {
    
    public func testCheckoutWithoutItems() {
        
        XCTAssertEqual(0.0, Checkout().total([Item]()))
    }
}
