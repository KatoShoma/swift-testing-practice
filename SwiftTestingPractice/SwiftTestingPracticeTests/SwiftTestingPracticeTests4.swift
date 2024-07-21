//
//  SwiftTestingPracticeTests4.swift
//  SwiftTestingPracticeTests
//
//  Created by 加藤祥真 on 2024/06/20.
//

import Testing
@testable import SwiftTestingPractice

struct ColorPaletteTest4 {

    @Test(arguments: [
        ColorPalette.Color.red,
        ColorPalette.Color.blue,
        ColorPalette.Color.green
    ])
    func testNoYellowOnAddBlue(color: ColorPalette.Color) async throws {
        let colorPalette = ColorPalette(color: color)
        try #require(await colorPalette.color != .unknown)

        let output = colorPalette.addBlue()
        #expect(output != .yellow)
    }

    @Test(arguments: [
        ColorPalette.Color.red,
        ColorPalette.Color.blue,
        ColorPalette.Color.yellow
    ])
    func testNoCyanOnAddGreen(color: ColorPalette.Color) async throws {
        let colorPalette = ColorPalette(color: color)
        try #require(await colorPalette.color != .unknown)

        let output = colorPalette.addGreen()
        #expect(output != .cyan)
    }

    @Test(arguments: [
        ColorPalette.Color.green,
        ColorPalette.Color.blue,
        ColorPalette.Color.purple
    ])
    func testNoWhiteOnAddBlue(color: ColorPalette.Color) async throws {
        let colorPalette = ColorPalette(color: color)
        try #require(await colorPalette.color != .unknown)

        let output = colorPalette.addBlue()
        #expect(output != .white)
    }
}
