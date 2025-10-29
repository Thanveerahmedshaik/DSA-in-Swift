//
//  MergeSortTests.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 27/10/25.
//

import XCTest
@testable import DSA_in_Swift

final class MergeSortTests: XCTestCase {

    func testBasicSort() {
        let unsorted = [38, 27, 43, 3, 9, 82, 10]
        let expected = [3, 9, 10, 27, 38, 43, 82]
        XCTAssertEqual(mergeSort(unsorted), expected)
    }

    func testEmptyArray() {
        XCTAssertEqual(mergeSort([]), [])
    }

    func testAlreadySorted() {
        XCTAssertEqual(mergeSort([1, 2, 3]), [1, 2, 3])
    }

    func testReverseArray() {
        XCTAssertEqual(mergeSort([5, 4, 3, 2, 1]), [1, 2, 3, 4, 5])
    }

    func testDuplicates() {
        XCTAssertEqual(mergeSort([4, 1, 4, 2]), [1, 2, 4, 4])
    }
}
