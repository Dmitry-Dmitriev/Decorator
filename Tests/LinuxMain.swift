import XCTest

import DecoratorTests

var tests = [XCTestCaseEntry]()
tests += DecoratorTests.allTests()
XCTMain(tests)
