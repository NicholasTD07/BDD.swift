//
//  specTests.swift
//  spec
//
//  Created by NicholasTD07 on 1/5/17.
//  Copyright © 2017 spec. All rights reserved.
//

import Foundation
import XCTest
import spec

class specTests: XCTestCase {
    func testExample() {
        describe("spec") {
            $0.it("tests equality") {
                expect(1) == 1
            }
        }

        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //// XCTAssertEqual(spec().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
