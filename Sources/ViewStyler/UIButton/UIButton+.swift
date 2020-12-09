//
//  UIButton+.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UIButton: VSButtonHolderView, VSStylezable {
    public func set(holderedText: NSAttributedString?, state: UIControl.State) {
        setAttributedTitle(holderedText, for: state)
    }

    public func holderedText(state: UIControl.State) -> NSAttributedString? {
        if let title = attributedTitle(for: state) {
            return title
        } else if let title = title(for: state) {
            return NSAttributedString(string: title)
        } else {
            return nil
        }
    }
}
