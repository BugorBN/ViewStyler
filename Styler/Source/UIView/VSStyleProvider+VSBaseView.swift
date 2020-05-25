//
//  VSStyleProvider+VSBaseView.swift
//  ViewStyler
//
//  Created by basalaev on 25.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSBaseView {
    @discardableResult
    func set(baseStyle: View.BaseStyle) -> VSStyleProvider<View> {
        if let backgroundColor = baseStyle.backgroundColor {
            set(backgroundColor: backgroundColor)
        }

        if let cornerRadius = baseStyle.cornerRadius {
            set(cornerRadius: cornerRadius)
        }

        if let borderColor = baseStyle.borderColor {
            set(borderColor: borderColor)
        }

        if let borderWidth = baseStyle.borderWidth {
            set(borderWidth: borderWidth)
        }

        return self
    }

    @discardableResult
    func set(backgroundColor: UIColor?) -> VSStyleProvider<View> {
        view.backgroundColor = backgroundColor
        return self
    }

    @discardableResult
    func set(cornerRadius: CGFloat) -> VSStyleProvider<View> {
        view.cornerRadius = cornerRadius
        return self
    }

    @discardableResult
    func set(borderColor: UIColor?) -> VSStyleProvider<View> {
        view.borderColor = borderColor
        return self
    }

    @discardableResult
    func set(borderWidth: CGFloat) -> VSStyleProvider<View> {
        view.borderWidth = borderWidth
        return self
    }
}
