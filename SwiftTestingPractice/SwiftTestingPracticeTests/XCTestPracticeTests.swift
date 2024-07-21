//
//  XCTestPractice.swift
//  SwiftTestingPracticeTests
//
//  Created by 加藤祥真 on 2024/06/20.
//

import XCTest
@testable import SwiftTestingPractice

final class XCTestPractice: XCTestCase {

    func testAddBlueToRed() {
        let colorPalette = ColorPalette(color: .red)

        let outputColor = colorPalette.addBlue()

        XCTAssertEqual(outputColor, .purple)
    }

}

