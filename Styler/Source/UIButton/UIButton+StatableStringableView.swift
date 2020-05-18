//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UIButton: StatableStringableView {
    func set(attributedText: NSAttributedString?, state: UIControl.State) {
        setAttributedTitle(attributedText, for: state)
    }

    func attributedText(for state: UIControl.State) -> NSAttributedString? {
        if let attributedTitle = attributedTitle(for: state) {
            return attributedTitle
        } else if let title = title(for: state) {
            return NSAttributedString(string: title)
        } else {
            return nil
        }
    }
}
