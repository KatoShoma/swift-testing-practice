//
//  SwiftTestingPracticeTests5.swift
//  SwiftTestingPracticeTests
//
//  Created by 加藤祥真 on 2024/06/20.
//

import Testing
@testable import SwiftTestingPractice

struct ColorPaletteTest5 {

    // testNoYellowOnAddBlue 1-100
    @Test(arguments: [
        ColorPalette.Color.red,
        ColorPalette.Color.blue,
        ColorPalette.Color.green
    ])
    func testNoYellowOnAddBlue1(color: ColorPalette.Color) async throws {
        let colorPalette = ColorPalette(color: color)
        try #require(await colorPalette.color != .unknown)

        let output = colorPalette.addBlue()
        #expect(output != .yellow)
    }
}
