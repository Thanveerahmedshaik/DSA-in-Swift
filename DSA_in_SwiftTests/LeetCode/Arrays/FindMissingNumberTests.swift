//
//  FindMissingNumberTests.swift
//  DSA_in_SwiftTests
//
//  Created by Thanveer ahmed Shaik on 29/10/25.
//


import XCTest
@testable import DSA_in_Swift

final class FindMissingNumberTests: XCTestCase {

    // Sum Formula Method Tests
    func testFindMissingNumberOptimized_NormalCase() {
        XCTAssertEqual(findMissingNumberOptimized([0, 1, 3]), 2)
        XCTAssertEqual(findMissingNumberOptimized([1, 2, 3, 4, 5, 7, 0, 6, 9]), 8)
        XCTAssertEqual(findMissingNumberOptimized([0, 1, 2, 3, 4, 5, 6, 7, 9]), 8)
    }

    func testFindMissingNumberOptimized_EmptyArray() {
        XCTAssertEqual(findMissingNumberOptimized([]), 0)
    }

    func testFindMissingNumberOptimized_NoMissing() {
        XCTAssertEqual(findMissingNumberOptimized([0, 1, 2, 3]), 4)
    }

    func testFindMissingNumberOptimized_InvalidInput() {
        // invalid if number out of expected range
        XCTAssertNil(findMissingNumberOptimized([1, 2, 3, 4, 5, 6, 10]))
    }

    // XOR Method Tests
    func testFindMissingNumberXOR_NormalCase() {
        XCTAssertEqual(findMissingNumberXOR([0, 1, 3]), 2)
        XCTAssertEqual(findMissingNumberXOR([1, 2, 3, 4, 5, 7, 0, 6, 9]), 8)
    }

    func testFindMissingNumberXOR_EmptyArray() {
        XCTAssertEqual(findMissingNumberXOR([]), 0)
    }

    func testFindMissingNumberXOR_InvalidInput() {
        XCTAssertNil(findMissingNumberXOR([-1, 2, 3]))
    }

    func testFindMissingNumberXOR_NoMissing() {
        XCTAssertEqual(findMissingNumberXOR([0, 1, 2, 3]), 4)
    }
}
