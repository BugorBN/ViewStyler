//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

protocol StatableStringableView {
    func set(attributedText: NSAttributedString?, state: UIControl.State)
    func attributedText(for state: UIControl.State) -> NSAttributedString?
}
