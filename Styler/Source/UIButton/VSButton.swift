//
//  VSButton.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSButton: VSButtonHolderView {
    associatedtype TextStyle: VSTextBaseStyle & VSTextParagraphStyle
}
