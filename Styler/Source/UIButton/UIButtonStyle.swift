//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

// swiftlint:disable identifier_name

enum UIButtonStyle {
    case `default`
    case bordered
    case bordered_small
    case bordered_big
    case button_small

    var textStyle: StringStyle {
        switch self {
        case .bordered:
            return .button_8
        case .bordered_small:
            return .button_10
        case .bordered_big:
            return .button_24
        case .button_small:
            return .button_10
        default:
            fatalError("Not implement")
        }
    }

    var cornerRadius: CGFloat? {
        switch self {
        case .bordered:
            return 12.0
        case .bordered_small:
            return 8.0
        case .bordered_big:
            return 11.0
        case .button_small:
            return 13.0
        default:
            fatalError("Not implement")
        }
    }

    var underlined: Bool {
        fatalError("Not implement")
    }

    var borderColor: UIColor? {
        switch self {
        case .bordered:
            return Asset.Colors.electricBlue.color
        case .bordered_small:
            return Asset.Colors.electricBlue.color
        case .bordered_big:
            return Asset.Colors.electricBlue.color
        case .button_small:
            return Asset.Colors.pinkishPurple.color
        default:
            fatalError("Not implement")
        }
    }

    var borderWidth: CGFloat {
        switch self {
        case .bordered:
            return 2.0
        case .bordered_small:
            return 1.0
        default:
            return 0.0
        }
    }

    func textColor(state _: UIControl.State) -> UIColor {
        switch self {
        case .bordered:
            return Asset.Colors.white.color
        case .bordered_small:
            return Asset.Colors.white.color
        case .bordered_big:
            return Asset.Colors.black.color
        case .button_small:
            return Asset.Colors.white.color
        default:
            fatalError("Not implement")
        }
    }
}
