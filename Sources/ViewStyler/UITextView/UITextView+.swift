//
//  UITextView+.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UITextView: VSTextHolderView, VSStringHolderView {
    public var holderedLinkTextAttributes: [NSAttributedString.Key : Any] {
        get {
            linkTextAttributes ?? [:]
        }
        set {
            linkTextAttributes = newValue
        }
    }

    public var holderedEditingTextAttributes: [NSAttributedString.Key : Any] {
        get {
            typingAttributes
        }
        set {
            typingAttributes = newValue
        }
    }

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
