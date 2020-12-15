//
//  VSStyleProvider+Text.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSStringView & UIView {
    @discardableResult
    func hideViewIfEmpty() -> VSStyleProvider<View> {
        view.isHidden = view.holderedText == nil || (view.holderedText?.string.isEmpty != false)
        return self
    }
}

public extension VSStyleProvider where View: VSStringView {
    @discardableResult
    func add(substring: String?, configure: ((VSStyleProvider<VSWrappedStringView<View>>) -> Void)? = nil) -> VSStyleProvider<View> {
        guard let substring = substring else {
            return self
        }

        let wrappedView = VSWrappedStringView<View>(string: substring)
        configure?(VSInnerStyleProvider(view: wrappedView))

        guard let substringAS = wrappedView.holderedText else {
            return self
        }

        let newAS: NSMutableAttributedString
        if let text = view.holderedText {
            newAS = NSMutableAttributedString(attributedString: text)
        } else {
            newAS = NSMutableAttributedString()
        }

        newAS.append(substringAS)
        view.holderedText = newAS

        return self
    }

    @discardableResult
    func set(text: String?) -> VSStyleProvider<View> {
        if let text = text {
            view.holderedText = NSAttributedString(string: text)
        } else {
            view.holderedText = nil
        }

        return self
    }
}
