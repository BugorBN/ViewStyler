//
//  VSButtonHolderView.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSButtonHolderView: VSControl {
    func set(holderedText: NSAttributedString?, state: UIControl.State)
    func holderedText(state: UIControl.State) -> NSAttributedString?
}
