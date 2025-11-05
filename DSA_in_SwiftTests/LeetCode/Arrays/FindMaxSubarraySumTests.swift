//
//  FindMaxSubarraySumTests.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 05/11/25.
//
import XCTest
@testable import DSA_in_Swift

final class MaxSubArraySumTests: XCTestCase {

    func testBasicCases() {
        let solver = MaxSubArraySum()
        XCTAssertEqual(solver.findMaxSubArraySum([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6)
        XCTAssertEqual(solver.findMaxSubArraySum([1]), 1)
        XCTAssertEqual(solver.findMaxSubArraySum([5, 4, -1, 7, 8]), 23)
    }
    
    func testEdgeCases() {
        let solver = MaxSubArraySum()
        XCTAssertEqual(solver.findMaxSubArraySum([-1]), -1)
        XCTAssertEqual(solver.findMaxSubArraySum([-2, -3, -1, -5]), -1)
        XCTAssertEqual(solver.findMaxSubArraySum([0, 0, 0, 0]), 0)
    }
    
    func testLargeArray() {
        let solver = MaxSubArraySum()
        let largeArray = Array(-1000...1000)
        XCTAssertEqual(solver.findMaxSubArraySum(largeArray), (0...1000).reduce(0, +))
    }
    
    func testAlternatingValues() {
        let solver = MaxSubArraySum()
        let alternating = (1...1000).map { $0.isMultiple(of: 2) ? $0 : -$0 }
        XCTAssertEqual(solver.findMaxSubArraySum(alternating), 1000)
    }
}
