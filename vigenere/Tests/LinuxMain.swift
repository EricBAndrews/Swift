import XCTest

import vigenereTests

var tests = [XCTestCaseEntry]()
tests += vigenereTests.allTests()
XCTMain(tests)