import XCTest
@testable import swift4_client

final class swift4_clientTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift4_client().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
