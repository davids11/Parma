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
    
    func testCodeDiff() throws {
        let content =
"""
``````
protocol Store {
  ~~func data(for key: Strings) -> Data?~~
    func element<T>(for key: String) -> T?
}
``````
"""
        
        let sut = try ParmaCore(content)
        
        sut.start()
    }
    
    func testStrikeThrough() throws {
        let content =
"""
~~func bool(forKey aKey: String)~~

~~func bool(forKey aKey: String) -> Bool ~~

## Headline

**bold statement**

```
class PersistenceServiceTests: XCTest {

   func test_userName_persistsUserName() {
        let store = StoreFake()
}
```
"""
        
        let sut = try ParmaCore(content)
        
        sut.start()
    }
}
