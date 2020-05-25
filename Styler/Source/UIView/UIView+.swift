//
//  UIView.swift
//  ViewStyler
//
//  Created by basalaev on 25.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSBaseHolderView: VSItem {
    var backgroundColor: UIColor? { get set }
    var cornerRadius: CGFloat { get set }
    var borderWidth: CGFloat { get set }
    var borderColor: UIColor? { get set }
}

extension UIView: VSBaseHolderView {
    public var cornerRadius: CGFloat {
        get {
            layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    public var borderWidth: CGFloat {
        get {
            layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }

    public var borderColor: UIColor? {
        get {
            if let cgColor = layer.borderColor {
                return UIColor(cgColor: cgColor)
            } else {
                return nil
            }
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}

public protocol VSBaseStyle {
    var backgroundColor: UIColor?? { get }
    var cornerRadius: CGFloat? { get }
    var borderWidth: CGFloat? { get }
    var borderColor: UIColor?? { get }
}

public extension VSBaseStyle {
    var backgroundColor: UIColor?? { nil }
    var cornerRadius: CGFloat? { nil }
    var borderWidth: CGFloat? { nil }
    var borderColor: UIColor?? { nil }
}

public protocol VSBaseView: VSBaseHolderView {
    associatedtype BaseStyle: VSBaseStyle
}

public extension VSStyleProvider where View: VSBaseView {
    @discardableResult
    func set(baseStyle: View.BaseStyle) -> VSStyleProvider<View> {
        if let backgroundColor = baseStyle.backgroundColor {
            set(backgroundColor: backgroundColor)
        }

        if let cornerRadius = baseStyle.cornerRadius {
            set(cornerRadius: cornerRadius)
        }

        if let borderColor = baseStyle.borderColor {
            set(borderColor: borderColor)
        }

        if let borderWidth = baseStyle.borderWidth {
            set(borderWidth: borderWidth)
        }

        return self
    }

    @discardableResult
    func set(backgroundColor: UIColor?) -> VSStyleProvider<View> {
        view.backgroundColor = backgroundColor
        return self
    }

    @discardableResult
    func set(cornerRadius: CGFloat) -> VSStyleProvider<View> {
        view.cornerRadius = cornerRadius
        return self
    }

    @discardableResult
    func set(borderColor: UIColor?) -> VSStyleProvider<View> {
        view.borderColor = borderColor
        return self
    }

    @discardableResult
    func set(borderWidth: CGFloat) -> VSStyleProvider<View> {
        view.borderWidth = borderWidth
        return self
    }
}

/*
 String Style
@discardableResult
  // swiftlint:disable:next identifier_name
  func set(adjustsFontSizeToFitWidth: Bool) -> UIStyler<View> {
      view.titleLabel?.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
      return self
  }
*/
