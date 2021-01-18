//
// izi
// Copyright © 2020 Heads and Hands. All rights reserved.
//

import Kingfisher
import UIKit

public extension VSStyleProvider where View: VSImageView {
    @discardableResult
    func set(imageURL: URL?, style: View.ImageStyle) -> Self {
        clear()

        guard let imageURL = imageURL else {
            set(placeholder: style.errorPlaceholder)
            return self
        }

        set(placeholder: style.loadingPlaceholder)

        let options = style.option.kfOptions(size: view.bounds.size)

        view.kf.setImage(with: imageURL, placeholder: nil, options: options) { [weak view] result in
            guard let view = view else {
                return
            }

            switch result {
            case let .success(response):
                view.image = response.image
                view.contentMode = style.imageContentMode
            case .failure:
                VSStyleProvider(view: view).set(placeholder: style.errorPlaceholder)
            }
        }

        return self
    }

    @discardableResult
    func clear() -> Self {
        view.kf.cancelDownloadTask()
        view.image = nil
        return self
    }

    private func set(placeholder: VSImageViewPlaceholder?) {
        guard let placeholder = placeholder else {
            return
        }

        switch placeholder {
        case let .color(color):
            view.backgroundColor = color
        case let .image(image, contentMode, color):
            view.image = image
            view.contentMode = contentMode
            view.backgroundColor = color
        }
    }
}

private extension VSImageViewOption {
    func kfOptions(size: CGSize) -> KingfisherOptionsInfo {
        switch self {
        case .aspectFill:
            return [
                .scaleFactor(UIScreen.main.scale),
                .processor(ResizingImageProcessor(referenceSize: size, mode: .aspectFill)),
                .cacheOriginalImage,
                .backgroundDecode,
                .transition(.fade(0.25))
            ]
        case .rounded:
            let radius = size.width / 2.0
            let processor = RoundCornerImageProcessor(cornerRadius: radius, targetSize: size)
            var options = VSImageViewOption.aspectFill.kfOptions(size: size)
            options.append(.processor(processor))
            return options
        case let .blured(radius):
            let processor = BlurImageProcessor(blurRadius: radius)
            var options = VSImageViewOption.aspectFill.kfOptions(size: size)
            options.append(.processor(processor))
            return options
        case let .custom(configurator):
            return configurator(size)
        }
    }
}
