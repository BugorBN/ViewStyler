//
//  VSImageHolderView.swift
//  ViewStyler
//
//  Created by basalaev on 18.01.2021.
//  Copyright © 2021 Heads and Hands. All rights reserved.
//

import UIKit
import Kingfisher

public protocol VSImageHolderView: VSItem {
    var kf: Kingfisher.KingfisherWrapper<UIImageView> { get }
    var bounds: CGRect { get }
    var image: UIImage? { get set }
    var isHidden: Bool { get set }
    var contentMode: UIView.ContentMode { get set }
    var backgroundColor: UIColor? { get set }
}
