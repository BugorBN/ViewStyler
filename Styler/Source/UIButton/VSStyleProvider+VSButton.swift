//
//  VSStyleProvider+VSButton.swift
//  ViewStyler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSButton {
    @discardableResult
    func configure(state: UIControl.State, configurator: @escaping (VSStyleProvider<VSWrappedButton<View>>) -> Void) -> VSStyleProvider<View> {
        configurator(VSInnerStyleProvider(view: VSWrappedButton(view: view, state: state)))
        return self
    }
}
