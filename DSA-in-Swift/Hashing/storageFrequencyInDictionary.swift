//
//  storageFrequencyInDictionary.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 02/08/25.
//

import Foundation

// Method 1: Using a dictionary with manual if else check

func storeFrequencyInDictionary(_ nums: [Int]) -> [Int : Int]{
    var frequencyMap = [Int : Int]()
    for num in nums{
        if let count = frequencyMap[num]{ // we are safely unwrapping it because the return type is frequencyMap[] is optional
            frequencyMap[num] = count + 1
        }
        else{
            frequencyMap[num] = 1
        }
    }
    return frequencyMap
}


//Method 2: Cleaner version using default value (like Python's Counter)

func storeFrequencyUsingDefault(_ nums: [Int]) -> [Int: Int]{
    var frequencyMap: [Int: Int] = [:] //creates an empty dictionary
    for num in nums{
        frequencyMap[num,default: 0] += 1
    }
    return frequencyMap
    
}

// what does this frequencyMap[num, default: 0] += 1 do?
// Checks if num is already in the dictionary
// If num is available -> then increment its value by 1
// If num is not available -> then add the num key and assign its value as 1
// So this automatically handles both new and existing keys, in just one clean line.
// The time complexity is O(n) and space complexity is O(1) in worst case.



// Method 3: Using reduce(into: ) - a functional Swift way

func storeFrequencyUsingReduce(_ nums: [Int]) -> [Int: Int]{
    let frequencyMap = nums.reduce(into: [:]){counts, num in
        counts[num, default:0] += 1
    }
    return frequencyMap
}


// In Swift closures can infer types automatically when they are passed to functions like reduce(into: )

// Syntax:
// reduce(into: startingValue) { (accumulator, element) in
    // logic
// }

// accumulator: something you’re building up (here it’s a dictionary called counts)
// element: the current item from the array (here it's num)


// When to use reduce(into: )
// Use it when:
// YOu want to build a dictionary or array from an array
// You want performance because it avoids repeatedly copying
// You want to mutate the result inside the loop-like closure


// Test the methods like below in the main func
//
//    let nums = [5, 6, 7, 7, 1, 9, 111, 1, 1, 5, 1, 1]
//
//    print("Method 1 →", storeFrequencyInDictionary(nums))
//    print("Method 2 →", storeFrequencyUsingDefault(nums))
//    print("Method 3 →", storeFrequencyUsingReduce(nums))

/*
 Output (all methods):
 [5: 2, 6: 1, 7: 2, 1: 5, 9: 1, 111: 1]
*/

// Time Complexity: O(n) – We iterate through the list once
// Space Complexity: O(n) – In worst case, all elements are unique

// These methods are useful for tasks like:
// - Counting occurrences in data analysis
// - Word/character frequency (Strings)
// - Hash-based optimizations in algorithms
