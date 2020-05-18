//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

typealias HighlightBlock = (UIButton, Bool) -> Void

class UIButtonHighlighter {
    enum HighlightType {
        case standart

        var block: HighlightBlock { { button, highlight in
            if highlight {
                let highlightScale: CGFloat = 0.93
                button.transform = CGAffineTransform(scaleX: highlightScale, y: highlightScale)
            } else {
                button.transform = .identity
            }
        }
        }
    }

    private let highlightBlock: (UIButton, Bool) -> Void
    private let duration: UIView.AnimationDuration

    private var cancelEvents: [UIControl.Event] = [
        .touchUpInside,
        .touchUpOutside,
        .touchCancel,
    ]

    init(duration: UIView.AnimationDuration, highlightBlock: @escaping HighlightBlock) {
        self.duration = duration
        self.highlightBlock = highlightBlock
    }

    init(highlightType: HighlightType) {
        duration = .default
        highlightBlock = highlightType.block
    }

    func registrate(button: UIButton) {
        remove(button: button)
        button.addTarget(self, action: #selector(highlight(sender:)), for: .touchDown)
        cancelEvents.forEach { event in
            button.addTarget(self, action: #selector(cancelHighlight(sender:)), for: event)
        }
    }

    func remove(button: UIButton) {
        button.removeTarget(self, action: #selector(highlight(sender:)), for: .touchDown)
        cancelEvents.forEach { event in
            button.removeTarget(self, action: #selector(cancelHighlight(sender:)), for: event)
        }
    }

    @objc
    private func highlight(sender: UIButton) {
        sender.animate(
            duration: duration,
            animations: {
                self.highlightBlock(sender, true)
            }
        )
    }

    @objc
    private func cancelHighlight(sender: UIButton) {
        sender.animate(
            duration: duration,
            animations: {
                self.highlightBlock(sender, false)
            }
        )
    }
}
