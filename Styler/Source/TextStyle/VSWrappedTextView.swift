//
//  VSWrappedTextView.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public class VSWrappedTextView<View: VSTextView>: VSTextView {
    public typealias FontStyle = View.FontStyle
    public typealias ParagraphStyle = View.ParagraphStyle

    public var holderedText: NSAttributedString?

    public init(string: String) {
        holderedText = NSAttributedString(string: string)
    }
}
