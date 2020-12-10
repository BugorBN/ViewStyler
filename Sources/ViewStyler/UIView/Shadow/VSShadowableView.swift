//
//  VSShadowableView.swift
//  ViewStyler
//
//  Created by basalaev on 10.12.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public protocol VSShadowableView: VSItem {
    associatedtype ShadowStyle: VSShadowStyle
}
