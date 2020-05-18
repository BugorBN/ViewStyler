//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UITextView: StringableView {
    var viewText: NSAttributedString? {
        get {
            attributedText
        }
        set {
            if let newValue = newValue {
                attributedText = newValue
            }
        }
    }
}
