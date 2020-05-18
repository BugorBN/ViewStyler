//
//  Example.swift
//  Styler
//
//  Created by basalaev on 16.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

enum ExampleStringStyle: VSTextBaseStyle, VSTextParagraphStyle {
    case h1
    case h2

    var font: UIFont {
        return UIFont.systemFont(ofSize: 10)
    }

    var paragraphSpacing: CGFloat {
        return 10
    }
}

extension UILabel: VSTextView {
    typealias FontStyle = ExampleStringStyle
    typealias ParagraphStyle = ExampleStringStyle
}
