import XCTest
@testable import ImageManager

final class ImageManagerTests: XCTestCase {
    func testLoadImage() {
        ImageManager().loadImage(for: URL(string: "https://cdn1.itpro.co.uk/sites/itpro/files/styles/article_main_wide_image/public/2015/12/swift-og.png?itok=YSTgCI6L")!) { (result) in
            guard let _ = try? result.get() else {
                XCTFail("Error: expected image to load successfully")
                return
            }
            XCTAssertTrue(true)
        }
    }
    
    func testLoadImageFailure() {
        ImageManager().loadImage(for: URL(string: "https://dn1.itpro.co.uk/sites/itpro/files/styles/article_main_wide_image/public/2015/12/swift-og.png?itok=YSTgCI6L")!) { (result) in
            if let _ = try? result.get() {
                XCTFail("Error: expected no imgae")
                return
            }
            XCTAssertTrue(true)
        }
    }


    static var allTests = [
        ("testLoadImage", testLoadImage),
    ]
}
