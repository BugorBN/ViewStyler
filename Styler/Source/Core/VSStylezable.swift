//
//  VSStylezable.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

protocol VSStylezable {}

extension VSStylezable where Self: VSView {
    var styler: VSStyleProvider<Self> {
        VSStyleProvider(view: self)
    }
}
