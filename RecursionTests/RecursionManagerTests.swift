//
//  RecursionManagerTests.swift
//  RecursionTests
//
//  Created by Drew Sullivan on 5/31/19.
//  Copyright © 2019 Drew Sullivan. All rights reserved.
//

import XCTest
@testable import Recursion

class RecursionManagerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_countHi_givenFourHi_returnsFour() {
        XCTAssertEqual(RecursionManager.countHi("xhixhihixhix"), 4)
    }
    
    func test_noX_removesX() {
        XCTAssertEqual(RecursionManager.noX("xaabx"), "aab")
        XCTAssertEqual(RecursionManager.noX(""), "")
        XCTAssertEqual(RecursionManager.noX("xaxaxbx"), "aab")
    }
    
    func test_factorial_givenNumGreaterThan1_returnsFactorial() {
        XCTAssertEqual(RecursionManager.factorial(5), 120)
    }
    
    func test_factorial_givenNumLessThan1_returnsOne() {
        XCTAssertEqual(RecursionManager.factorial(-2), 1)
    }
    
    func test_array220_givenSuccessfulArr_returnsTrue() {
        XCTAssertEqual(RecursionManager.array220([1, 2, 20], index: 0), true)
    }
    
    func test_array220_givenUnsuccessfulArr_returnsFalse() {
        XCTAssertEqual(RecursionManager.array220([1, 2, 3], index: 0), false)
    }
    
    func test_strCount_givenStrWithOneValidResult_returnsOne() {
        XCTAssertEqual(RecursionManager.strCount(largeString: "dogcatfish", sub: "dog"), 1)
    }
    
    func test_strCount_givenStrWithTwoValidResults_returnsTwo() {
        XCTAssertEqual(RecursionManager.strCount(largeString: "dogcatdog", sub: "dog"), 2)
    }
    
    func test_strCount_givenStrWithZeroValidResults_returnsZero() {
        XCTAssertEqual(RecursionManager.strCount(largeString: "puppy", sub: "dog"), 0)
    }
    
    

}
