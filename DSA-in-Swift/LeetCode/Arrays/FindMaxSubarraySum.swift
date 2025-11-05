//
//  FindMaxSubarraySum.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 05/11/25.
//

import Foundation

class MaxSubArraySum{
    
    func findMaxSubArraySum(_ array: [Int]) -> Int{
       
    ///     Kadane's Algorithm to find the maximum subarray sum in O(n) time.
    ///    - Parameters:
    ///        - Array: An array of integers representing the sequence.
    ///     - Returns: The largest possible sum of a contiguous subarray.
    ///     - Complexity:
    ///        - Time: O(n)
    ///        - Space: O(1)
        
        var total : Int = 0
        var maxi = Int.min
        let n = array.count
        
        for i in 0..<n {
            total += array[i]
            maxi = max(maxi, total)
            if total < 0{
                total = 0
            }
        }
        return maxi
    }
}
