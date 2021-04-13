//
//  VSStyleProvider+FontStyle.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSStringView {
    @discardableResult
    func add(fontStyle: View.TextStyle) -> VSStyleProvider<View> {
        add(font: fontStyle.font)

        if let color = fontStyle.color {
            add(color: color)
        }

        if let underlineStyle = fontStyle.underlineStyle {
            add(underlineStyle: underlineStyle)
        }

        if let letterSpacing = fontStyle.letterSpacing {
            add(letterSpacing: letterSpacing)
        }

        add(ligatures: fontStyle.useLigatures)

        return self
    }

    @discardableResult
    func add(font: UIFont) -> VSStyleProvider<View> {
        view.addAttribute(.font, value: font)
        return self
    }

    @discardableResult
    func add(color: UIColor) -> VSStyleProvider<View> {
        view.addAttribute(.foregroundColor, value: color)
        return self
    }

    @discardableResult
    func add(underlineStyle: NSUnderlineStyle = .single) -> VSStyleProvider<View> {
        view.addAttribute(.underlineStyle, value: underlineStyle.rawValue)
        return self
    }

    @discardableResult
    func add(letterSpacing: CGFloat) -> VSStyleProvider<View> {
        view.addAttribute(.kern, value: letterSpacing)
        return self
    }

    @discardableResult
    func add(ligatures flag: Bool) -> VSStyleProvider<View> {
        view.addAttribute(.ligature, value: flag ? 1 : 0)
        return self
    }
}
