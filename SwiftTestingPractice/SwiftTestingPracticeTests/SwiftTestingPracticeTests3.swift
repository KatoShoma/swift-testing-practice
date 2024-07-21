//
//  SwiftTestingPracticeTests3.swift
//  SwiftTestingPracticeTests
//
//  Created by 加藤祥真 on 2024/06/20.
//

import Testing
@testable import SwiftTestingPractice

struct ColorPaletteTest3 {
    @Test(.disabled("pass this test"))
    func testAddBlueToRed() {
        let colorPalette = ColorPalette(color: .red) // Create Instance (.red)

        let outputColor = colorPalette.addBlue() // Addition of blue

        #expect(outputColor == ColorPalette.Color.purple)
    }
}
