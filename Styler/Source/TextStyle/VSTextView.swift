//
//  VSTextView.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

protocol VSTextView: VSTextHolderView {
    associatedtype FontStyle: VSTextBaseStyle
    associatedtype ParagraphStyle: VSTextParagraphStyle
}
