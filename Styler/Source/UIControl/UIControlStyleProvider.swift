//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

class UIControlStyleProvider<View: UIControl>: NSObject {
    let view: View
    let state: UIControl.State

    init(view: View, state: UIControl.State) {
        self.view = view
        self.state = state
        super.init()
    }
}

extension UIControlStyleProvider: StringableView where View: StatableStringableView {
    var viewText: NSAttributedString? {
        get {
            view.attributedText(for: state)
        }
        set {
            view.set(attributedText: newValue, state: state)
        }
    }

    var isHidden: Bool {
        set {
            view.isHidden = newValue
        }
        get {
            view.isHidden
        }
    }
}
