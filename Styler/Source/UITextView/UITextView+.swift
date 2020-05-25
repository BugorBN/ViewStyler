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
            return attributedText
        }
        set {
            attributedText = newValue
        }
    }
}

