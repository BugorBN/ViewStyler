//
//  VSTextParagraphStyle.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSTextParagraphStyle {
    var paragraphSpacing: CGFloat? { get }
    var lineBreakMode: NSLineBreakMode? { get }
    var textAlignment: NSTextAlignment? { get }
    var lineHeightMultiple: CGFloat? { get }
    var hyphenationFactor: Float? { get }
}

public extension VSTextParagraphStyle {
    var paragraphSpacing: CGFloat? { nil }
    var lineBreakMode: NSLineBreakMode? { nil }
    var textAlignment: NSTextAlignment? { nil }
    var lineHeightMultiple: CGFloat? { nil }
    var hyphenationFactor: Float? { nil }
}
