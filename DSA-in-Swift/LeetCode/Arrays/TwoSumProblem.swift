//
//  TwoSumProblem.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 03/11/25.
//

import Foundation

class TwoSumProblem {
    func twoSum(_ nums: [Int],_ target: Int) -> [[Int]]{
        var result: [[Int]] = []
        let n = nums.count
        
        for i in 0..<n {
            for j in (i+1)..<n {
                if nums[i] + nums[j] == target {
                    result.append([i,j])
                }
            }
        }
        return result
    }
    
    func twoSumOptimized(_ nums: [Int], _ target: Int) -> [Int] {
        var numsToIndex: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            let requiredNumber = target - value
            if let requiredNumberIndex = numsToIndex[requiredNumber]{
                return [requiredNumberIndex, index]
            }
            numsToIndex[value] = index
        }
        return []
    }
}
