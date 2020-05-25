//
//  VSStyleProvider.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public class VSStyleProvider<View: VSItem> {
    let view: View

    init(view: View) {
        self.view = view
    }
}
