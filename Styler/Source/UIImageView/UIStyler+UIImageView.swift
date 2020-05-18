//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import Kingfisher
import UIKit

extension UIStyler where View: UIImageView {
    @discardableResult
    func set(imageURL: URL?, style: UIImageViewStyle, placeholder: UIImage? = nil) -> UIStyler<View> {
        clear()

        guard let imageURL = imageURL else {
            if let placeholder = placeholder {
                view.image = placeholder
            }
            return self
        }

        let options = style.kfOptions(size: view.bounds.size, placeholder: placeholder)
        view.kf.setImage(
            with: imageURL,
            placeholder: nil,
            options: options
        )

        return self
    }

    @discardableResult
    func clear() -> UIStyler<View> {
        view.kf.cancelDownloadTask()
        view.image = nil
        return self
    }
}

private extension UIImageViewStyle {
    func kfOptions(size: CGSize, placeholder: UIImage?) -> KingfisherOptionsInfo {
        switch self {
        case .default:
            return [
                .scaleFactor(UIScreen.main.scale),
                .processor(ResizingImageProcessor(referenceSize: size, mode: .aspectFill)),
                .cacheOriginalImage,
                .transition(.fade(0.25)),
                .onFailureImage(placeholder),
            ]
        case .rounded:
            let radius = size.width / 2.0
            let processor = RoundCornerImageProcessor(cornerRadius: radius, targetSize: size)
            var options = UIImageViewStyle.default.kfOptions(size: size, placeholder: placeholder)
            options.append(.processor(processor))
            return options
        case let .blured(radius):
            let processor = BlurImageProcessor(blurRadius: radius)
            var options = UIImageViewStyle.default.kfOptions(size: size, placeholder: placeholder)
            options.append(.processor(processor))
            return options
        case .blackWhite:
            let processor = BlackWhiteProcessor()
            var options = UIImageViewStyle.default.kfOptions(size: size, placeholder: placeholder)
            options.append(.processor(processor))
            return options
        }
    }
}
