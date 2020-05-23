//
//  VSStyleProvider+VSTextField.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSTextField {
    @discardableResult
    func editingAttributes(configurator: @escaping (VSStyleProvider<VSWrappedTextField<View>>) -> Void) -> VSStyleProvider<View> {
        configurator(VSSubStyleProvider(view: VSWrappedTextField(view: view, state: .editing)))
        return self
    }

    @discardableResult
    func placeholder(configurator: @escaping (VSStyleProvider<VSWrappedTextField<View>>) -> Void) -> VSStyleProvider<View> {
        configurator(VSSubStyleProvider(view: VSWrappedTextField(view: view, state: .placeholder)))
        return self
    }
}
