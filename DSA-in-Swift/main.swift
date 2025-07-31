//
//  main.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 31/07/25.
//

import Foundation

print("Enter a number:", terminator: " ")
if let input = readLine(), let num = Int(input) {
    extractAndReverseDigits(num)
} else {
    print("Invalid input.")
}


