import XCTest
import class Foundation.Bundle
import calcCore
final class calcTests: XCTestCase {
    func testCalc() {
        var tool = CommandLineTool(arguments: ["calc", "1", "*", "3"])
        
        do {
            try tool.run()
            
        }
        catch {
            print("whoops")
        }
    }
//    func testPipe() {
//        var tool = CommandLineTool(arguments: <#T##[String]#>)
//    }
    static var allTests = [
        ("testCalc", testCalc)
    ]
}
