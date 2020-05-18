//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UIStyler where View: UIButton {
    @discardableResult
    func add(text: String?, style: UIButtonStyle) -> UIStyler<View> {
        for state in states {
            stateProvider(state: state).styler
                .set(text: text, style: style.textStyle)
                .add(color: style.textColor(state: state))
        }

        if let borderColor = style.borderColor {
            view.layer.borderColor = borderColor.cgColor
            view.layer.borderWidth = style.borderWidth
            view.clipsToBounds = true
        }

        return self
    }

    @discardableResult
    func set(text: String?, style: StringStyle, state: UIControl.State) -> UIStyler<View> {
        stateProvider(state: state).styler
            .set(text: text, style: style)
        return self
    }

    @discardableResult
    func append(text: String?, style: StringStyle, state: UIControl.State) -> UIStyler<View> {
        stateProvider(state: state).styler
            .append(text: text, style: style)
        return self
    }

    @discardableResult
    func set(textStyle: StringStyle, state: UIControl.State) -> UIStyler<View> {
        stateProvider(state: state).styler
            .add(style: textStyle)
        return self
    }

    @discardableResult
    func add(textColor: UIColor, state: UIControl.State) -> UIStyler<View> {
        stateProvider(state: state).styler
            .add(color: textColor)
        return self
    }

    @discardableResult
    func add(textAlignment: NSTextAlignment, state: UIControl.State) -> UIStyler<View> {
        stateProvider(state: state).styler
            .add(textAlignment: textAlignment)
        return self
    }

    @discardableResult
    func add(isUnderlined: Bool, state: UIControl.State) -> UIStyler<View> {
        stateProvider(state: state).styler
            .isUnderlined(isUnderlined)
        return self
    }

    @discardableResult
    func set(backgroundColor: UIColor) -> UIStyler<View> {
        view.backgroundColor = backgroundColor
        return self
    }

    @discardableResult
    // swiftlint:disable:next identifier_name
    func set(adjustsFontSizeToFitWidth: Bool) -> UIStyler<View> {
        view.titleLabel?.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
}
