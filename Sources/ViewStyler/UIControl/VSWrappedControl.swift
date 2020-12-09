//
//  VSWrappedControl.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public class VSWrappedControl<View: VSControl>: VSControl {
    public let view: View
    public let state: UIControl.State

    init(view: View, state: UIControl.State) {
        self.view = view
        self.state = state
    }
}
