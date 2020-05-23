//
//  VSControlStyleProvider.swift
//  Styler
//
//  Created by basalaev on 18.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSControl: VSView {
    var state: UIControl.State { get }
}

public protocol VSButtonHolderView: VSControl {
    func set(holderedText: NSAttributedString?, state: UIControl.State)
    func holderedText(state: UIControl.State) -> NSAttributedString?
}

extension UIButton: VSButtonHolderView, VSStylezable {
    public func set(holderedText: NSAttributedString?, state: UIControl.State) {
        setAttributedTitle(holderedText, for: state)
    }

    public func holderedText(state: UIControl.State) -> NSAttributedString? {
        if let title = attributedTitle(for: state) {
            return title
        } else if let title = title(for: state) {
            return NSAttributedString(string: title)
        } else {
            return nil
        }
    }
}

public protocol VSButton: VSButtonHolderView {
    associatedtype BaseStyle: VSTextBaseStyle
    associatedtype ParagraphStyle: VSTextParagraphStyle
}

public extension VSStyleProvider where View: VSButton {
    @discardableResult
    func configure(state: UIControl.State, configurator: @escaping (VSStyleProvider<VSWrappedButton<View>>) -> Void) -> VSStyleProvider<View> {
        configurator(VSSubStyleProvider(view: VSWrappedButton(view: view, state: state)))
        return self
    }
}

public class VSWrappedControl<View: VSControl>: VSControl {
    public let view: View
    public let state: UIControl.State

    init(view: View, state: UIControl.State) {
        self.view = view
        self.state = state
    }
}

public class VSWrappedButton<View: VSButton>: VSWrappedControl<View>, VSTextView {
    public typealias BaseStyle = View.BaseStyle
    public typealias ParagraphStyle = View.ParagraphStyle

    public var holderedText: NSAttributedString? {
        get {
            view.holderedText(state: state)
        }
        set {
            view.set(holderedText: newValue, state: state)
        }
    }
}
