//
//  VSWrappedTextView.swift
//  Styler
//
//  Created by basalaev on 25.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public class VSWrappedTextView<View: VSTextView>: VSStringView {
    public enum State {
        case link
    }

    public typealias TextStyle = View.TextStyle

    public let view: View
    public let state: State

    public var holderedText: NSAttributedString? {
        get {
            switch state {
            case .link:
                return NSAttributedString(string: "...", attributes: view.holderedLinkTextAttributes)
            }
        }
        set {
            switch state {
            case .link:
                view.holderedLinkTextAttributes = newValue?.attributes(at: 0, effectiveRange: nil) ?? [:]
            }
        }
    }

    init(view: View, state: State) {
        self.view = view
        self.state = state
    }
}
