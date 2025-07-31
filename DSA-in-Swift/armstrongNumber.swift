//
//  armstrongNumber.swift
//  DSA-in-Swift
//
//  Created by Thanveer ahmed Shaik on 31/07/25.
//

import Foundation

func isArmstrong(_ n: Int) -> Bool {
    let digits = String(n).count
    var temp = n
    var sum = 0

    while temp > 0 {
        let digit = temp % 10
        sum += Int(pow(Double(digit), Double(digits)))
        temp /= 10
    }

    return sum == n
}
