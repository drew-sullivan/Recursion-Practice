//
//  RecusionManager.swift
//  Recursion
//
//  Created by Drew Sullivan on 5/31/19.
//  Copyright © 2019 Drew Sullivan. All rights reserved.
//

import Foundation

struct RecursionManager {
    
//    countHi
//    Given a string, compute recursively (no loops) the number of times lowercase "hi" appears in the string.
//
//
//    countHi("xxhixx") → 1
//    countHi("xhixhix") → 2
//    countHi("hi") → 1
    static func countHi(_ str: String) -> Int {
        guard str.count >= 2 else {
            return 0
        }
        let endIx = str.index(after: str.startIndex)
        let sub = String(str[str.startIndex...endIx])
        if sub == "hi" {
            return 1 + countHi(String(str[str.index(after: endIx)...]))
        }
        return countHi(String(str[endIx...]))
    }
    
    
//    noX
//    Given a string, compute recursively a new string where all the 'x' chars have been removed.
//
//
//    noX("xaxb") → "ab"
//    noX("abc") → "abc"
//    noX("xx") → ""
    static func noX(_ str: String) -> String {
        guard str.count != 0 else { return "" }
        guard str[str.startIndex] != "x" else {
            return noX(String(str[str.index(after: str.startIndex)...]))
        }
        return String(str[str.startIndex]) + noX(String(str[str.index(after: str.startIndex)...]))
    }
    
//    factorial
//    Given n of 1 or more, return the factorial of n, which is n * (n-1) * (n-2) ... 1. Compute the result recursively (without loops).
//
//
//    factorial(1) → 1
//    factorial(2) → 2
//    factorial(3) → 6
    
    static func factorial(_ num: Int) -> Int {
        guard num >= 1 else {
            return 1
        }
        return num * factorial(num - 1)
    }
    
//    array220
//    Given an array of ints, compute recursively if the array contains somewhere a value followed in the array by that value times 10. We'll use the convention of considering only the part of the array that begins at the given index. In this way, a recursive call can pass index+1 to move down the array. The initial call will pass in index as 0.
//
//
//    array220([1, 2, 20], 0) → true
//    array220([3, 30], 0) → true
//    array220([3], 0) → false
    static func array220(_ arr: [Int], index: Int) -> Bool {
        guard arr.count >= 2 else {
            return false
        }
        guard index < arr.count - 1 else {
            return false
        }
        if arr[index] * 10 == arr[index + 1] {
            return true
        }
        return array220(arr, index: index + 1)
    }
    
//    strCount
//    Given a string and a non-empty substring sub, compute recursively the number of times that sub appears in the string, without the sub strings overlapping.
//
//
//    strCount("catcowcat", "cat") → 2
//    strCount("catcowcat", "cow") → 1
//    strCount("catcowcat", "dog") → 0
    static func strCount(largeString: String, sub: String) -> Int {
        if largeString.count < sub.count {
            return 0
        }
        let endIndex = largeString.index(largeString.startIndex, offsetBy: sub.count)
        let comparableSubString = String(largeString[largeString.startIndex..<endIndex])
        if comparableSubString == sub {
            return 1 + strCount(largeString: String(largeString[endIndex...]), sub: sub)
        }
        return strCount(largeString: String(largeString[largeString.index(after: largeString.startIndex)...]), sub: sub)
    }
}
