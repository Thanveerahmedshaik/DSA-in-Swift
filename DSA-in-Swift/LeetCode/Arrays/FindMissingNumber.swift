//
//  FindMissingNumber.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 29/10/25.
//

import Foundation

// Sum Formula Method
func findMissingNumberOptimized(_ array: [Int]) -> Int? {
    let n = array.count
    // if the array isEmpty, missing number must be 0
    guard n > 0 else { return 0 }
    
    // Expected range is 0...n (hence n + 1 numbers originally)
    let expectedSum = (n * (n + 1)) / 2
    let actualSum = array.reduce(0, +)
    
    let missing = expectedSum - actualSum
    // Sanity check: result must be within [0, n]
    guard missing >= 0 && missing <= n else { return nil }
    
    return missing
}

// XOR Method
func findMissingNumberXOR(_ array: [Int]) -> Int? {
    let n = array.count
    guard n >= 0 else { return nil }

    var xorAll = 0
    var xorArray = 0

    // XOR all numbers from 0 to n
    for i in 0...n {
        xorAll ^= i
    }

    // XOR all elements in the array
    for num in array {
        xorArray ^= num
    }
    let missing = xorAll ^ xorArray
    guard missing >= 0 && missing <= n else { return nil }

    return missing
}

// Time and Space Complexity

// Time Complexity - O(n)
// Space Complexity - O(1)

