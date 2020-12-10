//
//  VSShadowStyle.swift
//  ViewStyler
//
//  Created by basalaev on 10.12.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSShadowStyle {
    var color: UIColor? { get }
    var alpha: CGFloat? { get }
    var blur: CGFloat? { get }
    var offset: CGSize? { get }
    var spread: CGFloat? { get }
}

public extension VSShadowStyle {
    var color: UIColor? { nil }
    var alpha: CGFloat? { nil }
    var blur: CGFloat? { nil }
    var offset: CGSize? { nil }
    var spread: CGFloat? { nil }
}
