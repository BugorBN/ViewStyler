//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UIStyler where View: ShapedButton {
    @discardableResult
    func set(style: ShapedButtonStyle) -> UIStyler<View> {
        // TODO: Heed color, highlightedColor and selectedColor?
        view.styler.set(backgroundColor: style.backgroundColor, state: .normal)
        view.styler.set(backgroundColor: style.backgroundSelectedColor, state: .highlighted)
        view.styler.set(backgroundColor: style.backgroundSelectedColor, state: [.highlighted, .selected])
        view.styler.set(backgroundColor: style.backgroundDisabledColor, state: .disabled)

        view.styler.set(borderColor: style.borderColor, state: .normal)
        view.styler.set(borderColor: style.borderSelectedColor, state: .highlighted)
        view.styler.set(borderColor: style.borderSelectedColor, state: [.highlighted, .selected])
        view.styler.set(borderColor: style.borderColor, state: .selected)
        view.styler.set(borderColor: style.borderDisabledColor, state: .disabled)

        return self
    }

    @discardableResult
    func set(backgroundColor: UIColor, state: UIControl.State) -> UIStyler<View> {
        view.setBackgroundColor(backgroundColor, for: state)
        return self
    }

    @discardableResult
    func set(borderColor: UIColor, state: UIControl.State) -> UIStyler<View> {
        view.setBorderColor(borderColor, for: state)
        return self
    }

    @discardableResult
    func set(borderWidth: CGFloat) -> UIStyler<View> {
        view.borderWidth = borderWidth
        return self
    }

    @discardableResult
    func set(cornerRadius: CGFloat) -> UIStyler<View> {
        view.cornerRadius = cornerRadius
        return self
    }

    @discardableResult
    func set(cornerRadiuses: [CGFloat]) -> UIStyler<View> {
        view.cornerRadiuses = cornerRadiuses
        return self
    }

    @discardableResult
    func set(shapeInsets: [CGPoint]) -> UIStyler<View> {
        view.shapeInsets = shapeInsets
        return self
    }

    @discardableResult
    func set(overlap: UIEdgeInsets) -> UIStyler<View> {
        view.overlap = overlap
        return self
    }
}
