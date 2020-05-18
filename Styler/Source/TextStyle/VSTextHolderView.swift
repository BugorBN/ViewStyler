//
//  VSTextHolderView.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSTextHolderView: VSView {
    var holderedText: NSAttributedString? { get set }
}

public extension VSTextHolderView {
    func addAttribute(_ key: NSAttributedString.Key, value: Any) {
        holderedText = holderedText?.add(key, value: value)
    }
}
