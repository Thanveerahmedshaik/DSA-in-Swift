//
//  MaxConsecutiveOnesTests.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 02/11/25.
//

import XCTest
@testable import DSA_in_Swift   
final class MaxConsecutiveOnesTests: XCTestCase {
    
    func testMixedValues() {
        XCTAssertEqual(findMaxConsecutiveOnes([1,1,0,1,1,1]), 3)
    }
    
    func testAllZeros() {
        XCTAssertEqual(findMaxConsecutiveOnes([0,0,0,0]), 0)
    }
    
    func testAllOnes() {
        XCTAssertEqual(findMaxConsecutiveOnes([1,1,1,1,1]), 5)
    }
    
    func testAlternateOnesAndZeros() {
        XCTAssertEqual(findMaxConsecutiveOnes([1,0,1,0,1,0]), 1)
    }
    
    func testEndingWithOnes() {
        XCTAssertEqual(findMaxConsecutiveOnes([0,1,1,1,1]), 4)
    }
    
    func testEmptyArray() {
        XCTAssertEqual(findMaxConsecutiveOnes([]), 0)
    }
    
    func testSingleOne() {
        XCTAssertEqual(findMaxConsecutiveOnes([1]), 1)
    }
    
    func testSingleZero() {
        XCTAssertEqual(findMaxConsecutiveOnes([0]), 0)
    }
}
