//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UITextField: StatableStringableView {
    func set(attributedText: NSAttributedString?, state: UIControl.State) {
        switch state {
        case .text:
            self.attributedText = attributedText
        case .textEditing:
            if let attributes = attributedText?.attributes(at: 0, effectiveRange: nil) {
                defaultTextAttributes = attributes
            }
        case .placeholder:
            attributedPlaceholder = attributedText
        default:
            return
        }
    }

    func attributedText(for state: UIControl.State) -> NSAttributedString? {
        switch state {
        case .text:
            return attributedText
        case .textEditing:
            return NSAttributedString(string: "...", attributes: defaultTextAttributes)
        case .placeholder:
            return attributedPlaceholder
        default:
            return nil
        }
    }
}

extension UIControl.State {
    static var text: UIControl.State {
        .init(rawValue: 1 << 16)
    }

    static var textEditing: UIControl.State {
        .init(rawValue: 1 << 17)
    }

    static var placeholder: UIControl.State {
        .init(rawValue: 1 << 18)
    }
}
