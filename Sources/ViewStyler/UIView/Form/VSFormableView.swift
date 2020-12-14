//
//  VSFormableView.swift
//  Styler
//
//  Created by basalaev on 14.12.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSFormableView: VSItem {
    associatedtype FormStyle: VSFormStyle
}
