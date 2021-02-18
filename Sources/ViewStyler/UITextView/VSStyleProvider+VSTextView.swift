//
//  VSStyleProvider+VSTextView.swift
//  Styler
//
//  Created by basalaev on 25.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public extension VSStyleProvider where View: VSTextView {
    @discardableResult
    func linkAttributes(configurator: @escaping (VSStyleProvider<VSWrappedTextView<View>>) -> Void) -> VSStyleProvider<View> {
        configurator(VSInnerStyleProvider(view: VSWrappedTextView(view: view, state: .link)))
        return self
    }

    @discardableResult
    func editingAttributes(configurator: @escaping (VSStyleProvider<VSWrappedTextView<View>>) -> Void) -> VSStyleProvider<View> {
        configurator(VSInnerStyleProvider(view: VSWrappedTextField(view: view, state: .editing)))
        return self
    }
}
