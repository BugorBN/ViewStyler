//
//  UIImageView.swift
//  ViewStyler
//
//  Created by basalaev on 18.01.2021.
//  Copyright © 2021 Heads and Hands. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView: VSImageHolderView {
    public var kf: KingfisherWrapper<UIImageView> {
        .init(self)
    }
}
