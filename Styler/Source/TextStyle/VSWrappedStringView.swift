//
//  VSWrappedStringView.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public class VSWrappedStringView<View: VSStringView>: VSStringView {
    public typealias BaseStyle = View.BaseStyle
    public typealias ParagraphStyle = View.ParagraphStyle

    public var holderedText: NSAttributedString?

    public init(string: String) {
        holderedText = NSAttributedString(string: string)
    }
}
