//
//  VSTextHolderView.swift
//  Styler
//
//  Created by basalaev on 25.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSTextHolderView: VSItem {
    var holderedEditingTextAttributes: [NSAttributedString.Key: Any] { get set }
    var holderedLinkTextAttributes: [NSAttributedString.Key: Any] { get set }
}
