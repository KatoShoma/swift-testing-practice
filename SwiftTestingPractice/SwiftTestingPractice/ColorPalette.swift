//
//  Video.swift
//  SwiftTestingPractice
//
//  Created by 加藤祥真 on 2024/06/19.
//

struct ColorPalette {
    enum Color {
        case red, green, blue, yellow, purple, cyan, white, black, unknown

        func addBlue() -> Color {
            switch self {
                case .red:
                    return .purple
                case .green:
                    return .cyan
                case .yellow:
                    return .white
                case .blue:
                    return .blue // Blue + Blue = Blue
                case .purple, .cyan, .white, .black:
                    return self // Assume adding blue to these colors doesn't change them
                default:
                    return .unknown
            }
        }

        func addGreen() -> Color {
            switch self {
                case .red:
                    return .yellow
                case .green:
                    return .green // Green + Green = Green
                case .blue:
                    return .cyan
                case .yellow, .purple, .cyan, .white, .black:
                    return self // Assume adding green to these colors doesn't change them
                default:
                    return .unknown
            }
        }
    }

    let color: Color

    init(color: Color = .unknown) {
        self.color = color
    }

    func addBlue() -> ColorPalette.Color {
        return color.addBlue()
    }

    func addGreen() -> ColorPalette.Color {
        return color.addGreen()
    }
}
