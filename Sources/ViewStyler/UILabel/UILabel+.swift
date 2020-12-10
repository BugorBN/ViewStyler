//
//  UILabel+.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UILabel: VSStringHolderView {
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
