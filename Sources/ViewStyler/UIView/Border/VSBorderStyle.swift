//
//  VSBaseStyle.swift
//  Styler
//
//  Created by basalaev on 25.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSBorderStyle {
    var cornerRadius: CGFloat? { get }
    var borderWidth: CGFloat? { get }
    var borderColor: UIColor? { get }
}

public extension VSBorderStyle {
    var backgroundColor: UIColor? { nil }
    var cornerRadius: CGFloat? { nil }
    var borderWidth: CGFloat? { nil }
}
