//
//  main.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 31/07/25.
//

import Foundation

func main() {

    let nums = [5, 6, 7, 7, 1, 9, 111, 1, 1, 5, 1, 1]

    print("Method 1 ->", storeFrequencyInDictionary(nums))
    print("Method 2 ->", storeFrequencyUsingDefault(nums))
    print("Method 3 ->", storeFrequencyUsingReduce(nums))
}
main()


