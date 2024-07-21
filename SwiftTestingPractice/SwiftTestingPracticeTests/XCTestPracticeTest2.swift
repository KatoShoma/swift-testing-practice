//
//  XCTestPracticeTest2.swift
//  SwiftTestingPracticeTests
//
//  Created by 加藤祥真 on 2024/06/20.
//

@testable import SwiftTestingPractice
import XCTest

final class XCTestPracticeTest2: XCTestCase {

    func testNoYellowOnAddBlue() {
        let colors: [ColorPalette.Color] = [.red, .blue, .green]

        for color in colors {
            var colorPalette = ColorPalette(color: color)
            XCTAssertNotEqual(colorPalette.color, .unknown, "Initial color should not be unknown")

            let output = colorPalette.addBlue()
            XCTAssertNotEqual(output, .yellow, "Adding blue to \(color) should not result in yellow")
        }
    }

    func testNoWhiteOnAddGreen() {
        let colors: [ColorPalette.Color] = [.red, .blue, .green]

        for color in colors {
            var colorPalette = ColorPalette(color: color)
            XCTAssertNotEqual(colorPalette.color, .unknown, "Initial color should not be unknown")

            let output = colorPalette.addGreen()
            XCTAssertNotEqual(output, .white, "Adding green to \(color) should not result in white")
        }
    }

    func testNoBlackOnAddBlue() {
        let colors: [ColorPalette.Color] = [.red, .blue, .green]
        
        for color in colors {
            var colorPalette = ColorPalette(color: color)
            XCTAssertNotEqual(colorPalette.color, .unknown, "Initial color should not be unknown")

            let output = colorPalette.addBlue()
            XCTAssertNotEqual(output, .black, "Adding blue to \(color) should not result in black")
        }
    }

}
