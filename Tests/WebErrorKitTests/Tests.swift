import XCTest
import WebErrorKit


enum MyError: String, WebError {
    case single
    case camelCase
    case snake_case
}

enum MyComplexError: SerializableWebError {
    
    case itsComplicated(complication: String)
    
    var serializedCode: String {
        switch self {
        case .itsComplicated(complication: let c):
            return "its_complicated:\(c)"
        }
    }
    
}


class Tests: XCTestCase {
    
    func testSingle() {
        let err = MyError.single.code
        XCTAssertEqual(err, "my_error.single")
    }
    
    func testCamelCase() {
        let err = MyError.camelCase.code
        XCTAssertEqual(err, "my_error.camel_case")
    }
    
    func testSnakeCase() {
        let err = MyError.snake_case.code
        XCTAssertEqual(err, "my_error.snake_case")
    }
    
    func testComplicatedCase() {
        let err = MyComplexError.itsComplicated(complication: "Huge problem").code
        XCTAssertEqual(err, "my_complex_error.its_complicated:huge_problem")
    }
    
}
