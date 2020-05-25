//
//  UILabel+.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UILabel: VSStringHolderView, VSStylezable {
    public var holderedText: NSAttributedString? {
        get {
            return attributedText
        }
        set {
            attributedText = newValue
        }
    }
}
