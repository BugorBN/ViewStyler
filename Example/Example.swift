//
//  Example.swift
//  Styler
//
//  Created by basalaev on 16.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit
import ViewStyler

public enum ExampleStringStyle: VSTextBaseStyle, VSTextParagraphStyle {
    case h1
    case h2

    public var font: UIFont {
        return UIFont.systemFont(ofSize: 10)
    }

    public var paragraphSpacing: CGFloat {
        return 10
    }
}

public enum ExampleBorderStyle: VSBorderStyle {
    case `default`

    public var cornerRadius: CGFloat? {
        return 10
    }

    public var borderWidth: CGFloat? {
        return 1
    }

    public var borderColor: UIColor? {
        return .black
    }
}

public enum ExampleShadowStyle: VSShadowStyle {
    case `default`

    public var color: UIColor? {
        .black
    }

    public var alpha: CGFloat? {
        0.5
    }

    public var blur: CGFloat? {
        10
    }

    public var offset: CGSize? {
        .init(width: 0, height: 5)
    }

    public var spread: CGFloat? {
        -2
    }
}

extension UIView: VSShadowableView {
    public typealias ShadowStyle = ExampleShadowStyle
}

extension UILabel: VSStringView {
    public typealias TextStyle = ExampleStringStyle
}

extension UIButton: VSBorderView, VSButton {
    public typealias BorderStyle = ExampleBorderStyle
    public typealias TextStyle = ExampleStringStyle
}

extension UITextField: VSTextField {
    public typealias TextStyle = ExampleStringStyle
}

extension UITextView: VSTextView {
    public typealias TextStyle = ExampleStringStyle
}

extension String: VSStringStylable {
    public typealias TextStyle = ExampleStringStyle
}
