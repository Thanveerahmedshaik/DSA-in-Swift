//
//  main.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 31/07/25.
//

import Foundation

func main() {
    print("Enter a positive integer: ", terminator: "")

    if let input = readLine(), let num = Int(input), num > 0 {
        print("Brute Force:  \(findFactorsBruteForce(num)), The time complexity is O(n) and space complexity is O(k) where k is the number of factors.")
        print("Better Performance:  \(findFactorsBetter(num)), The time complexity is O(n) and space complexity is O(k) where k is the number of factors.")
        print("Optimized: \(findFactorsOptimized(num)), The time complexity is O(sqrt(n)) and space complexity is O(k) where k is the number of factors.")
    } else {
        print("Invalid input.")
    }
}
main()


