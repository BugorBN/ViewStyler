//
//  NSAttributedString+.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public extension NSAttributedString {
    var range: NSRange {
        NSRange(location: 0, length: string.utf16.count)
    }

    func attribute<T>(_ key: NSAttributedString.Key) -> T? {
        if string.isEmpty {
            return nil
        } else {
            return attribute(key, at: 0, effectiveRange: nil) as? T
        }
    }

    func add(_ key: NSAttributedString.Key, value: Any) -> NSAttributedString {
        let mutableAS = NSMutableAttributedString(attributedString: self)
        mutableAS.addAttribute(key, value: value, range: range)
        return mutableAS
    }
}
