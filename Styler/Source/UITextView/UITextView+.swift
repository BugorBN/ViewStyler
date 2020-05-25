//
//  UITextView+.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UITextView: VSStringHolderView, VSStylezable {
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
}

