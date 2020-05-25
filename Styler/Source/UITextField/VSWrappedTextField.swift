//
//  VSWrappedTextField.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public class VSWrappedTextField<View: VSTextField>: VSStringView, VSControl {
    public enum State {
        case editing
        case placeholder
    }

    public typealias BaseStyle = View.BaseStyle
    public typealias ParagraphStyle = View.ParagraphStyle

    public let view: View
    public let state: State

    public var holderedText: NSAttributedString? {
        get {
            switch state {
            case .editing:
                // TODO: Проверить на пустой строке
                return NSAttributedString(string: "...", attributes: view.holderedEditingTextAttributes)
            case .placeholder:
                return view.holderedPlaceholder
            }
        }
        set {
            switch state {
            case .editing:
                view.holderedEditingTextAttributes = newValue?.attributes(at: 0, effectiveRange: nil) ?? [:]
            case .placeholder:
                view.holderedPlaceholder = newValue
            }
        }
    }

    init(view: View, state: State) {
        self.view = view
        self.state = state
    }
}
