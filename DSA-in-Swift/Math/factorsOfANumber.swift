//
//  factorsOfANumber.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 02/08/25.
//

import Foundation

// Approach 1: Brute force method

func findFactorsBruteForce(_ n: Int ) -> [Int] {
    var factors: [Int] = []
    for i in 1...n {
        if n % i == 0{
            factors.append(i)
        }
    }
    
    return factors
}
//Factors of a number are the integers that can be multiplied together to produce that number.
//# For example, the factors of 12 are 1, 2, 3, 4, 6, and 12 because:
//# 1 * 12 = 12
//# 2 * 6 = 12
//# 3 * 4 = 12
//# The code below finds all the factors of a given positive integer.

//The time complexity of this code is O(n), where n is the input number, because we iterate through all integers from 1 to n.
//The space complexity is O(k), where k is the number of factors, since we store the factors in a list.
//This method is straightforward and works well for finding factors of any positive integer.
//Example usage:
//Enter a positive integer: 12
//The factors of 12 are: [1, 2, 3, 4, 6, 12]
//This method is particularly useful in competitive programming and scenarios where performance is critical.
//It leverages the mathematical properties of divisibility to provide a quick solution.


//Approach : 2 Better Performance
// In find_factors_better, instead of checking all numbers from 1 to n, we can check only up to n/2.
// This reduces the number of iterations significantly, especially for large numbers.

func findFactorsBetter(_ n: Int) -> [Int]{
    var factors: [Int] = []
    for i in 1...(n/2) {
        if n % i == 0{
            factors.append(i)
        }
    }
    factors.append(n)
    return factors
}


//    The time complexity of this code is O(n/2), which simplifies to O(n) because 1/2 is a constant factor, where n is the input number.
//    The space complexity is O(k), where k is the number of factors, since we store
//    the factors in a list.
//    This method is more efficient than the brute force method for larger numbers.
//    Example usage:
//    Enter a positive integer: 12
//    The factors of 12 are: [1, 2, 3, 4, 6, 12]
//    This method is particularly useful in competitive programming and scenarios where performance is critical.
//    It leverages the mathematical properties of divisibility to provide a quick solution.




//    Approach 3 : Optimized Method(Better Performance)
//    Instead of checking all numbers from 1 to n, we can check only up to the square root of n.
//    If i is a factor of n, then n/i is also a factor.
//    This reduces the number of iterations significantly, especially for large numbers.
//    for example, for n = 36, we only need to check up to 6 (the square root of 36).
//    1 * 36 = 36
//    2 * 18 = 36
//    3 * 12 = 36
//    4 * 9 = 36
//    6 * 6 = 36
//    till where should we check?
//    If we have a number n, we only need to check up to the square root of n.
//    This is because if n = a * b, then either a or b must be less than or equal to the square root of n.
//    For example, for n = 36,
//    the square root is 6, and we only need to check up to 6.
//    If we find a factor i, we can also find its corresponding factor n/i.
//    This method is more efficient than the previous methods, especially for large numbers.
//    The time complexity of this code is O(sqrt(n)), where n is the input number


func findFactorsOptimized(_ n: Int) -> [Int] {
    var factors: Set<Int> = [] // It creates a variable called factors which is a set of Ints and an empty set
    let sqrtN: Int = Int(Double(n).squareRoot())
//  In swift we need to double a number to use the squareroot function
    for i in 1...sqrtN{
        if n % i == 0 {
            factors.insert(i)
            factors.insert(n/i)
            
//   factors.insert(i) : Adds i to the set of factors.
//   factors.insert(n / i) : Adds the corresponding pair factor.
//   Since i * (n / i) = n, both i and n / i are valid factors.
//   Example: for i = 3, 36 / 3 = 12, so 12 is also a factor so i = 3 and n % i = 12 both are factors so we insert them in the set.
        }
        
    }
    return Array(factors).sorted() // We are sorting because the sets are unordered
    
}


// Use this in the main function to test the functions that's written in this file
//    {
//        print("Enter a positive integer: ", terminator: "")
//
//        if let input = readLine(), let num = Int(input), num > 0 {
//            print("Brute Force \u2192 \(findFactorsBruteForce(num))")
//            print("Better Performance \u2192 \(findFactorsBetter(num))")
//            print("Optimized \u2192 \(findFactorsOptimized(num))")
//        } else {
//            print("Invalid input.")
//        }
//    }

