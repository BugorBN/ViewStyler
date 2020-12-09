//
//  VSStringStylable.swift
//  Styler
//
//  Created by basalaev on 09.12.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSStringStylable {
    associatedtype TextStyle: VSTextBaseStyle & VSTextParagraphStyle
}
