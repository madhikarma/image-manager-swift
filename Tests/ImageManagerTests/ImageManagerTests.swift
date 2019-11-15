import XCTest
@testable import ImageManager

final class ImageManagerTests: XCTestCase {
    func testExample() {        
        ImageManager().loadImage(for: URL(string: "https://mages.app.goo.gl/ZUfB5Zbp5JhZ4isz5")!) { (result) in
            guard let _ = try? result.get() else {
                XCTFail("Error: expected image to load successfully")
                return
            }
            XCTAssertTrue(true)
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
