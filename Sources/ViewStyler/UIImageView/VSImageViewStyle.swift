//
//  VSImageViewStyle.swift
//  ViewStyler
//
//  Created by basalaev on 15.01.2021.
//  Copyright © 2021 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

public protocol VSImageViewStyle {
    var option: VSImageViewOption { get }
    var loadingPlaceholder: VSImageViewPlaceholder? { get }
    var errorPlaceholder: VSImageViewPlaceholder? { get }
    var imageContentMode: UIView.ContentMode { get }
}
