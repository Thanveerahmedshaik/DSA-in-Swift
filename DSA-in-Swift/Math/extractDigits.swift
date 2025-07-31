//
//  extractDigits.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 01/08/25.
//
// Concepts used : Modulo, Loops, String reversal


func extractAndReverseDigits(_ number: Int) {
    guard number > 0 else {
        print("Only positive numbers are supported.")
        return
    }
    
    var digits: [Int] = []
    var reversedNumber = 0
    var n = number
    
    while n>0 {
        let digit = n % 10
        digits.append(digit)
        reversedNumber = reversedNumber * 10 + digit
        n /= 10
        
    }
    
    print("Extrated digits (least to most significant): \(digits)")
    print("Reversed number : \(reversedNumber)")
    
    
    let reversedString = String(String(number).reversed())
    print("Reversed number (string): \(reversedString)")
}
