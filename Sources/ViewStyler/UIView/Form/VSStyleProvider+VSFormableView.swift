//
//  VSStyleProvider+VSFormableView.swift
//  ViewStyler
//
//  Created by basalaev on 14.12.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSFormableView & VSLayerHolderView {
    @discardableResult
    func add(formStyle: View.FormStyle) -> Self {
        let layer = view.layer

        let radius = formStyle.cornerRadius
        if let corners = formStyle.corners {
            let path = UIBezierPath(
                roundedRect: layer.bounds,
                byRoundingCorners: corners,
                cornerRadii: CGSize(width: radius, height: radius)
            )
            
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            layer.mask = mask
        } else {
            layer.cornerRadius = formStyle.cornerRadius
        }

        return self
    }
}

