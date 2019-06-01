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
    
    func test_powerN() {
        XCTAssertEqual(RecursionManager.powerN(4, n: 3), 64)
        XCTAssertEqual(RecursionManager.powerN(-2, n: 3), -8)
        XCTAssertEqual(RecursionManager.powerN(4, n: 0), 1)
        XCTAssertEqual(RecursionManager.powerN(0, n: 13), 0)
    }
    
    func test_pairStar() {
        XCTAssertEqual(RecursionManager.pairStar("kitty"), "kit*ty")
        XCTAssertEqual(RecursionManager.pairStar("kiitty"), "ki*it*ty")
        XCTAssertEqual(RecursionManager.pairStar(""), "")
        XCTAssertEqual(RecursionManager.pairStar("k"), "k")
    }
    
    func test_array11() {
        XCTAssertEqual(RecursionManager.array11([1, 11, -3, 4, 11, 11, 12], index: 0), 3)
        XCTAssertEqual(RecursionManager.array11([], index: 0), 0)
        XCTAssertEqual(RecursionManager.array11([11], index: 0), 1)
        XCTAssertEqual(RecursionManager.array11([6], index: 0), 0)
    }
    
    func test_triangle() {
        XCTAssertEqual(RecursionManager.triangle(5), 15)
        XCTAssertEqual(RecursionManager.triangle(0), 0)
        XCTAssertEqual(RecursionManager.triangle(-1), 0)
    }
    
    func test_countHi() {
        XCTAssertEqual(RecursionManager.countHi("xhixhihixhix"), 4)
        XCTAssertEqual(RecursionManager.countHi("x"), 0)
        XCTAssertEqual(RecursionManager.countHi("hi"), 1)
        XCTAssertEqual(RecursionManager.countHi(""), 0)
    }
    
    func test_noX() {
        XCTAssertEqual(RecursionManager.noX("xaabx"), "aab")
        XCTAssertEqual(RecursionManager.noX(""), "")
        XCTAssertEqual(RecursionManager.noX("xaxaxbx"), "aab")
    }
    
    func test_factorial() {
        XCTAssertEqual(RecursionManager.factorial(-2), 1)
        XCTAssertEqual(RecursionManager.factorial(5), 120)
    }
    
    func test_array220() {
        XCTAssertEqual(RecursionManager.array220([1, 2, 20], index: 0), true)
        XCTAssertEqual(RecursionManager.array220([1, 2, 3], index: 0), false)
    }
    
    func test_strCount() {
        XCTAssertEqual(RecursionManager.strCount(largeString: "dogcatfish", sub: "dog"), 1)
        XCTAssertEqual(RecursionManager.strCount(largeString: "dogcatdog", sub: "dog"), 2)
        XCTAssertEqual(RecursionManager.strCount(largeString: "puppy", sub: "dog"), 0)
    }
    
    

}
