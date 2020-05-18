//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UIStyler where View: UIControl {
    var states: [UIControl.State] {
        [.normal, .highlighted, .selected, .disabled]
    }

    func stateProvider(state: UIControl.State) -> UIControlStyleProvider<View> {
        UIControlStyleProvider(view: view, state: state)
    }

    @discardableResult
    func set(cornerRadius: CGFloat) -> UIStyler<View> {
        view.layer.cornerRadius = cornerRadius
        view.layer.masksToBounds = true
        return self
    }
}
