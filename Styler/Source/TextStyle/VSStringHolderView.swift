//
//  VSStringHolderView.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSStringHolderView: VSItem {
    var holderedText: NSAttributedString? { get set }
}

public extension VSStringHolderView {
    func addAttribute(_ key: NSAttributedString.Key, value: Any) {
        holderedText = holderedText?.add(key, value: value)
    }
}
