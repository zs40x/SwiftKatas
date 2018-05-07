import Foundation
import XCTest

public class SupermarketPricingTests: XCTestCase {
    
    public func testCheckoutWithoutItems() {
        XCTAssertEqual(0.0, Checkout().total([Item]()))
    }
    
    func testCheckoutSingleItem() {
        XCTAssertEqual(
            1.0,
            Checkout()
                .total([Item(name: "", price: 1.0)]))
    }
}
