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

extension UILabel: VSTextView {
    public typealias FontStyle = ExampleStringStyle
    public typealias ParagraphStyle = ExampleStringStyle
}
