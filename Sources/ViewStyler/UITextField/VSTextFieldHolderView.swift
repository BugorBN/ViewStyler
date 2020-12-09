//
//  VSTextFieldHolderView.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSTextFieldHolderView: VSControl {
    var holderedEditingTextAttributes: [NSAttributedString.Key: Any] { get set }
    var holderedPlaceholder: NSAttributedString? { get set }
}

