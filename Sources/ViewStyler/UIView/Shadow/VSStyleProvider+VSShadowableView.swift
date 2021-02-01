//
//  VSStyleProvider+Shadow.swift
//  ViewStyler
//
//  Created by basalaev on 10.12.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSShadowableView & VSLayerHolderView {
    @discardableResult
    func add(shadowStyle: View.ShadowStyle) -> Self {
        let layer = view.layer

        layer.masksToBounds = false
        layer.shadowColor = shadowStyle.color?.cgColor
        layer.shadowOffset = shadowStyle.offset ?? .zero
        layer.shadowOpacity = Float(shadowStyle.alpha ?? 0)
        layer.shadowRadius = (shadowStyle.blur ?? 0) / 2

        if let spread = shadowStyle.spread {
            layer.shadowPath = UIBezierPath(
                roundedRect: layer.bounds.insetBy(dx: -spread, dy: -spread),
                cornerRadius: layer.cornerRadius
            ).cgPath
        } else {
            layer.shadowPath = nil
        }

        return self
    }
}
