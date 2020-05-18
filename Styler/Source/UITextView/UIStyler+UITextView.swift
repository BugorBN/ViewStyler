//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UIStyler where View: UITextView {
    @discardableResult
    func addLink(underlineStyle: NSUnderlineStyle) -> UIStyler<View> {
        view.linkTextAttributes = [
            kCTUnderlineStyleAttributeName: underlineStyle.rawValue,
        ] as [NSAttributedString.Key: Any]
        return self
    }
}
