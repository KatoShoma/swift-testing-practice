//
//  SwiftTestingPracticeTests2.swift
//  SwiftTestingPracticeTests
//
//  Created by 加藤祥真 on 2024/06/20.
//

import Testing
@testable import SwiftTestingPractice

struct ColorPaletteTest2 {
    let colorPalette = ColorPalette(color: .red) // Create Instance

    @Test func addBlueToRed() {
        let outputColor = colorPalette.addBlue() // Addition of blue

        #expect(outputColor == ColorPalette.Color.purple)
    }

    @Test("Sets the color to red and adds green") func testAddGreen() async throws {
        let outputColor = colorPalette.addGreen()

        #expect(outputColor == ColorPalette.Color.yellow)
    }

}
