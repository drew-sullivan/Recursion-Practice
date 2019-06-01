//
//  RecusionManager.swift
//  Recursion
//
//  Created by Drew Sullivan on 5/31/19.
//  Copyright © 2019 Drew Sullivan. All rights reserved.
//

import Foundation

struct RecursionManager {
    
//    powerN
//    Given base and n that are both 1 or more, compute recursively (no loops) the value of base to the n power, so powerN(3, 2) is 9 (3 squared).
//
//
//    powerN(3, 1) → 3
//    powerN(3, 2) → 9
//    powerN(3, 3) → 27
    static func powerN(_ base: Int, n: Int) -> Int {
        guard n > 0 else {
            return 1
        }
        return base * powerN(base, n: n - 1)
    }
    
    
//    pairStar
//    prev  |  next  |  chance
//    Given a string, compute recursively a new string where identical chars that are adjacent in the original string are separated from each other by a "*".
//
//
//    pairStar("hello") → "hel*lo"
//    pairStar("xxyy") → "x*xy*y"
//    pairStar("aaaa") → "a*a*a*a"
    static func pairStar(_ str: String) -> String {
        guard str.count > 0 else {
            return ""
        }
        let firstLetter = String(str[str.startIndex])
        guard str.count >= 2 else {
            return firstLetter
        }
        let secondLetterIx = str.index(after: str.startIndex)
        let theRest = String(str[secondLetterIx...])
        if firstLetter == String(str[secondLetterIx]) {
            return "\(firstLetter)*" + pairStar(theRest)
        }
        return firstLetter + pairStar(theRest)
    }
    
    
//    array11
//    Given an array of ints, compute recursively the number of times that the value 11 appears in the array. We'll use the convention of considering only the part of the array that begins at the given index. In this way, a recursive call can pass index+1 to move down the array. The initial call will pass in index as 0.
//
//
//    array11([1, 2, 11], 0) → 1
//    array11([11, 11], 0) → 2
//    array11([1, 2, 3, 4], 0) → 0
    static func array11(_ arr: [Int], index: Int) -> Int {
        guard index < arr.count else {
            return 0
        }
        if arr[index] == 11 {
            return 1 + array11(arr, index: index + 1)
        }
        return array11(arr, index: index + 1)
    }
    
    
//    triangle
//    We have triangle made of blocks. The topmost row has 1 block, the next row down has 2 blocks, the next row has 3 blocks, and so on. Compute recursively (no loops or multiplication) the total number of blocks in such a triangle with the given number of rows.
//
//
//    triangle(0) → 0
//    triangle(1) → 1
//    triangle(2) → 3
    static func triangle(_ num: Int) -> Int {
        guard num >= 1 else {
            return 0
        }
        return num + triangle(num - 1)
    }
    
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
