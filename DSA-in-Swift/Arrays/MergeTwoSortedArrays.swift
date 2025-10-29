//
//  MergeTwoSortedArrays.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 27/10/25.
//

import Foundation


func mergeSortSingle(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else {
        return arr
    }
    
    let mid = arr.count / 2
    let leftHalf = Array(arr[..<mid])
    let rightHalf = Array(arr[mid...])
    
    let leftSorted = mergeSort(leftHalf)
    let rightSorted = mergeSort(rightHalf)
    
    return mergeWithoutDuplicates(leftSorted, rightSorted)
}

// Merge Sort for Two Arrays (With no duplicates)
func mergeSortTwoArrays(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    
    let sortedArray1 = mergeSortSingle(arr1)
    let sortedArray2 = mergeSortSingle(arr2)
    
    return mergeWithoutDuplicates(sortedArray1,sortedArray2)
}

func mergeWithoutDuplicates(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var merged: [Int] = []
    var leftIndex = 0
    var rightIndex = 0
    
    
    while leftIndex<arr1.count && rightIndex<arr2.count {
        if arr1[leftIndex]<arr2[rightIndex] {
            if merged.last != arr1[leftIndex]{
                merged.append(arr1[leftIndex])
            }
            leftIndex += 1
        }
        else if arr1[leftIndex]>arr2[rightIndex] {
            if merged.last != arr2[rightIndex]{
                merged.append(arr2[rightIndex])
            }
            rightIndex += 1
        }
        else {
            if merged.last != arr1[leftIndex]{
                merged.append(arr1[leftIndex])
            }
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    // Why wasnt it checked whether the array is empty or not?
    // merged.last in Swift returns an optional
    // when merged is empty, merged.last is nil
    // Comparing nil!= arr1[leftIndex] is perfectly safe in swift.
    
    // nil != <some Int> -> true
    // So the first element will be appended safely
    
    // So There is no crash risk and an extra check like if merged.isEmpty would be redundant
    
    while leftIndex < arr1.count {
        if merged.last != arr1[leftIndex]{
            merged.append(arr1[leftIndex])
        }
        leftIndex += 1
    }
    
    while rightIndex < arr2.count {
        if merged.last != arr2[rightIndex]{
            merged.append(arr2[rightIndex])
        }
        rightIndex += 1
    }
    
    return merged
}
