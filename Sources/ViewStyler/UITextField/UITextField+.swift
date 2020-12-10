//
//  UITextField+.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UITextField: VSStringHolderView, VSTextFieldHolderView {
    public var holderedText: NSAttributedString? {
        get {
            if let attributedText = attributedText {
                return attributedText
            } else if let text = text {
                return NSAttributedString(string: text)
            } else {
                return nil
            }
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
