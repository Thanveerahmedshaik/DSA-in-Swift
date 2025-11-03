//
//  TwoSumProblemTests.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 04/11/25.
//


import XCTest     //Loads apple testing framework
@testable import DSA_in_Swift

final class TwoSumProblemTests: XCTestCase {
    var solution: TwoSumProblem!
    //Preparing and clean up the solution object for the test.
    override func setUp() {
        super.setUp()
        solution = TwoSumProblem()
    }
    
    override func tearDown() {
        solution = nil
        super.tearDown()
    }
    
    func testTwoSumBruteForce() {
            XCTAssertEqual(solution.twoSum([2, 7, 11, 15], 9), [[0, 1]])
            XCTAssertEqual(solution.twoSum([3, 2, 4], 6), [[1, 2]])
            XCTAssertEqual(solution.twoSum([3, 3], 6), [[0, 1]])
            XCTAssertEqual(solution.twoSum([], 10), [])
        }
        
        func testTwoSumOptimized() {
            XCTAssertEqual(solution.twoSumOptimized([2, 7, 11, 15], 9), [0, 1])
            XCTAssertEqual(solution.twoSumOptimized([3, 2, 4], 6), [1, 2])
            XCTAssertEqual(solution.twoSumOptimized([3, 3], 6), [0, 1])
            XCTAssertEqual(solution.twoSumOptimized([], 10), [])
        }
        
        func testTwoSumWithNegativeNumbers() {
            XCTAssertEqual(solution.twoSumOptimized([-3, 4, 3, 90], 0), [0, 2])
        }
        
        func testNoValidPair() {
            XCTAssertEqual(solution.twoSumOptimized([1, 2, 3, 4], 100), [])
        }
}
