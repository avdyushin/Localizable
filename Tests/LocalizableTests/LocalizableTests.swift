//
//  LocalizableTest.swift
//  Localizable
//
//  Created by Grigory Avdyushin on 14/05/2020.
//  Copyright © 2020 Grigory Avdyushin. All rights reserved.
//

import XCTest
@testable import Localizable

final class LocalizableTests: XCTestCase {

    @Localizable var string = "foo"

    func testExample() {
        XCTAssertEqual(string, "foo")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
