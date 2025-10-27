//
//  MergeSort.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 27/10/25.
//

import Foundation


func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }

    let mid = array.count / 2
    let leftArray = Array(array[..<mid])
    let rightArray = Array(array[mid...])

    let leftSorted = mergeSort(leftArray)
    let rightSorted = mergeSort(rightArray)

    return merge(leftSorted, rightSorted)
}

private func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var result: [Int] = []

    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] <= right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
        }
    }

    if leftIndex < left.count {
        result.append(contentsOf: left[leftIndex...])
    }

    if rightIndex < right.count {
        result.append(contentsOf: right[rightIndex...])
    }

    return result
}

// append() -> adds single element
// append(contentsOf:) -> adds all the elements from another array


// Why use contentsOf instead of loop?

// Swift arrays are value types and copying is automatic so append(contentsOf:) is:
// Concise
// optimized at the compiler level
// faster than manually looping through the remaining elements


