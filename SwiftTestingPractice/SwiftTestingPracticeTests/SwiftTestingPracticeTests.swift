//
//  SwiftTestingPracticeTests.swift
//  SwiftTestingPracticeTests
//
//  Created by 加藤祥真 on 2024/06/19.
//

import Testing
@testable import SwiftTestingPractice

struct ColorPaletteTest {

    @Test func addBlueToRed() {
        let colorPalette = ColorPalette(color: .red) // Create Instance (.red)

        let outputColor = colorPalette.addBlue() // Addition of blue

        #expect(outputColor == ColorPalette.Color.purple)
    }

}
