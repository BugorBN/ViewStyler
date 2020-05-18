//
//  VSTextBaseStyle.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSTextBaseStyle {
    var font: UIFont { get }
    var color: UIColor? { get }
    var underlineStyle: NSUnderlineStyle? { get }
    var letterSpacing: CGFloat? { get }
}

public extension VSTextBaseStyle {
    var color: UIColor? { nil }
    var underlineStyle: NSUnderlineStyle? { nil }
    var letterSpacing: CGFloat? { nil }
}
