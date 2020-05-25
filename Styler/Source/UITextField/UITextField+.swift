//
//  UITextField+.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UITextField: VSStringHolderView, VSTextFieldHolderView, VSStylezable {
    public var holderedText: NSAttributedString? {
        get {
            attributedText
        }
        set {
            attributedText = newValue
        }
    }

    public var holderedEditingTextAttributes: [NSAttributedString.Key : Any] {
        get {
            defaultTextAttributes
        }
        set {
            defaultTextAttributes = newValue
        }
    }

    public var holderedPlaceholder: NSAttributedString? {
        get {
            attributedPlaceholder
        }
        set {
            attributedPlaceholder = newValue
        }
    }
}
