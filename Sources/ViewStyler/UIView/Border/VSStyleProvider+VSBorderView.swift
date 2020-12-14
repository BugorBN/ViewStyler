//
//  VSStyleProvider+VSBaseView.swift
//  ViewStyler
//
//  Created by basalaev on 25.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSBorderView & VSLayerHolderView {
    @discardableResult
    func setBorder(style: View.BorderStyle) -> Self {
        let layer = view.layer

        layer.borderColor = style.borderColor?.cgColor
        layer.borderWidth = style.borderWidth ?? 0

        return self
    }

    @discardableResult
    func set(borderColor: UIColor?) -> Self {
        view.layer.borderColor = borderColor?.cgColor
        return self
    }

    @discardableResult
    func set(borderWidth: CGFloat) -> Self {
        view.layer.borderWidth = borderWidth
        return self
    }
}
