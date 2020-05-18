//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

extension UIStyler where View: UITextField {
    var text: UIStyler<UIControlStyleProvider<View>> {
        UIControlStyleProvider(view: view, state: .text).styler
    }

    var textEditing: UIStyler<UIControlStyleProvider<View>> {
        UIControlStyleProvider(view: view, state: .textEditing).styler
    }

    var placeholder: UIStyler<UIControlStyleProvider<View>> {
        UIControlStyleProvider(view: view, state: .placeholder).styler
    }
}
