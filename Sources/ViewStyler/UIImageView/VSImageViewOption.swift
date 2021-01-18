//
//  VSImageViewOption.swift
//  ViewStyler
//
//  Created by basalaev on 15.01.2021.
//  Copyright © 2021 Heads and Hands. All rights reserved.
//

import Foundation
import Kingfisher
import UIKit

public enum VSImageViewOption {
    case aspectFill
    case rounded
    case blured(_ radius: CGFloat)
    case custom(_ configurator: (CGSize) -> KingfisherOptionsInfo)
}
