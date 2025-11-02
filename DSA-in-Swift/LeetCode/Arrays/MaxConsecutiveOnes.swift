//
//  MaxConsecutiveOnes.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 02/11/25.
//


import Foundation

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var count = 0
    var result = 0
    
    for num in nums {
        if num == 1 {
            count += 1
        }else {
            result = max(result, count)
            count = 0
        }
    }
    // We can only update the max when we see the 0, but if the array ends before i ever see that 0, I still need to check this one last time.
    result = max(result, count)
    return result
}
