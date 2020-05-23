//
//  VSControl.swift
//  Styler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public protocol VSControl: VSView {
    var state: UIControl.State { get }
}
