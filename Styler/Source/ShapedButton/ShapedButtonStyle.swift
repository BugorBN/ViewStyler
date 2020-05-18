//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

// swiftlint:disable identifier_name

enum ShapedButtonStyle {
    case fill_purple
    case fill_blue
    case fill_kiwi
    case fill_light_blue
    case fill_robins_egg
    case fill_bright_orange
    case bordered_white
    case bordered_disabled_white
    case bordered_puple
    case bordered_blue
    case bordered_blue_black

    var borderColor: UIColor {
        switch self {
        case .bordered_white, .bordered_disabled_white:
            return Asset.Colors.white.color
        case .bordered_blue:
            return Asset.Colors.electricBlue.color
        case .bordered_blue_black:
            return Asset.Colors.electricBlue.color
        case .bordered_puple:
            return Asset.Colors.pinkishPurple.color
        case .fill_blue:
            return Asset.Colors.electricBlue.color
        case .fill_kiwi:
            return Asset.Colors.kiwi.color
        case .fill_light_blue:
            return Asset.Colors.clearBlue.color
        case .fill_purple:
            return Asset.Colors.pinkishPurple.color
        case .fill_robins_egg:
            return Asset.Colors.robinSEgg.color
        case .fill_bright_orange:
            return Asset.Colors.brightOrange.color
        }
    }

    var borderSelectedColor: UIColor {
        switch self {
        case .bordered_white, .bordered_disabled_white:
            return Asset.Colors.brownGrey.color
        case .bordered_blue:
            return Asset.Colors.brownGrey.color
        case .bordered_blue_black:
            return Asset.Colors.brownGrey.color
        case .bordered_puple:
            return Asset.Colors.pinkishPurple30.color
        case .fill_blue:
            return Asset.Colors.brownGrey.color
        case .fill_kiwi:
            return Asset.Colors.brownGrey.color
        case .fill_light_blue:
            return Asset.Colors.brownGrey.color
        case .fill_purple:
            return Asset.Colors.brownGrey.color
        case .fill_robins_egg:
            return Asset.Colors.brownGrey.color
        case .fill_bright_orange:
            return Asset.Colors.brightOrange30.color
        }
    }

    var borderDisabledColor: UIColor {
        switch self {
        case .bordered_disabled_white:
            return Asset.Colors.white.color
        default:
            return borderSelectedColor
        }
    }

    var backgroundColor: UIColor {
        switch self {
        case .bordered_white, .bordered_disabled_white:
            return .clear
        case .bordered_blue:
            return Asset.Colors.charcoal.color
        case .bordered_blue_black:
            return Asset.Colors.black.color
        case .bordered_puple:
            return Asset.Colors.charcoal.color
        case .fill_blue:
            return Asset.Colors.electricBlue.color
        case .fill_kiwi:
            return Asset.Colors.kiwi.color
        case .fill_light_blue:
            return Asset.Colors.clearBlue.color
        case .fill_purple:
            return Asset.Colors.pinkishPurple.color
        case .fill_robins_egg:
            return Asset.Colors.robinSEgg.color
        case .fill_bright_orange:
            return Asset.Colors.brightOrange.color
        }
    }

    var backgroundSelectedColor: UIColor {
        switch self {
        case .bordered_white, .bordered_disabled_white:
            return .clear
        case .bordered_blue:
            return Asset.Colors.charcoal.color
        case .bordered_blue_black:
            return Asset.Colors.black.color
        case .bordered_puple:
            return Asset.Colors.charcoal.color
        case .fill_blue:
            return Asset.Colors.electricBlue30.color
        case .fill_kiwi:
            return Asset.Colors.brownGrey.color
        case .fill_light_blue:
            return Asset.Colors.brownGrey.color
        case .fill_purple:
            return Asset.Colors.brownGrey.color
        case .fill_robins_egg:
            return Asset.Colors.brownGrey.color
        case .fill_bright_orange:
            return Asset.Colors.brightOrange30.color
        }
    }

    var backgroundDisabledColor: UIColor {
        switch self {
        case .fill_blue:
            return Asset.Colors.electricBlue30.color
        default:
            return backgroundColor
        }
    }
}
