//
//  MergeTwoSortedArraysTests.swift
//  DSA_in_SwiftTests
//
//  Created by Thanveer ahmed Shaik on 29/10/25.
//

import XCTest
@testable import DSA_in_Swift

final class MergeTwoSortedArraysTests: XCTestCase {
    
    func testMergeTwoSortedArrays_NoDuplicates() {
        let arr1 = [1, 3, 5]
        let arr2 = [2, 4, 6]
        let expected = [1, 2, 3, 4, 5, 6]
        
        let result = mergeSortTwoArrays(arr1, arr2)
        XCTAssertEqual(result, expected)
    }
    
    func testMergeTwoSortedArrays_WithDuplicates() {
        let arr1 = [1, 2, 3, 4]
        let arr2 = [3, 4, 5, 6]
        let expected = [1, 2, 3, 4, 5, 6]
        
        let result = mergeSortTwoArrays(arr1, arr2)
        XCTAssertEqual(result, expected)
    }
    
    func testMergeTwoSortedArrays_OneEmpty() {
        let arr1: [Int] = []
        let arr2 = [1, 2, 3]
        let expected = [1, 2, 3]
        
        let result = mergeSortTwoArrays(arr1, arr2)
        XCTAssertEqual(result, expected)
    }
    
    func testMergeTwoSortedArrays_BothEmpty() {
        let arr1: [Int] = []
        let arr2: [Int] = []
        let expected: [Int] = []
        
        let result = mergeSortTwoArrays(arr1, arr2)
        XCTAssertEqual(result, expected)
    }
    
    func testMergeTwoSortedArrays_UnsortedInput() {
        let arr1 = [10, 1, 5]
        let arr2 = [8, 3]
        let expected = [1, 3, 5, 8, 10]
        
        let result = mergeSortTwoArrays(arr1, arr2)
        XCTAssertEqual(result, expected)
    }
    
    func testMergeSingleArray() {
        let arr = [5, 2, 8, 1]
        let expected = [1, 2, 5, 8]
        
        let result = mergeSortSingle(arr)
        XCTAssertEqual(result, expected)
    }
    
    func testDuplicateRemovalLogic() {
        let arr1 = [1, 1, 1, 2]
        let arr2 = [2, 2, 3]
        let expected = [1, 2, 3]
        
        let result = mergeSortTwoArrays(arr1, arr2)
        XCTAssertEqual(result, expected)
    }
}
