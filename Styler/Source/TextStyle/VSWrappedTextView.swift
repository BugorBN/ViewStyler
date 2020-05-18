//
//  VSWrappedTextView.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

class VSWrappedTextView<View: VSTextView>: VSTextView {
    typealias FontStyle = View.FontStyle
    typealias ParagraphStyle = View.ParagraphStyle

    var holderedText: NSAttributedString?

    init(string: String) {
        holderedText = NSAttributedString(string: string)
    }
}
