import XCTest
@testable import Parma

final class ParmaTests: XCTestCase {
    
    func testCodeBlock() throws {
        let code =
"""
```
class PersistenceServiceTests: XCTest {

❌  func test_userName_persistsUserName() {
        let store = StoreFake()
}
```
"""
        
        let sut = try ParmaCore(code)
        
        sut.start()
    }
}
