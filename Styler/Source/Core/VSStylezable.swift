//
//  VSStylezable.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSStylezable {}

public extension VSStylezable where Self: VSItem {
    var styler: VSStyleProvider<Self> {
        VSStyleProvider(view: self)
    }
}
