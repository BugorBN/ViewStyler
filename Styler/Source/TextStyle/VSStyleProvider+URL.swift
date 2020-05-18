//
//  VSStyleProvider+URL.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public extension VSStyleProvider where View: VSTextView {
    @discardableResult
    func add(url: String, for linkSubstring: String) -> VSStyleProvider<View> {
        guard let url = URL(string: url) else {
            return self
        }

        guard let text = view.holderedText, let range = text.string.range(of: linkSubstring) else {
            return self
        }

        let mutAS = NSMutableAttributedString(attributedString: text)
        mutAS.addAttribute(.link, value: url, range: NSRange(range, in: text.string))

        view.holderedText = mutAS

        return self
    }

    @discardableResult
    func add(url: String) -> VSStyleProvider<View> {
        if let url = URL(string: url) {
            view.addAttribute(.link, value: url)
        }

        return self
    }
}
