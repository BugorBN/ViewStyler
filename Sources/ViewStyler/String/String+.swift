//
//  String+.swift
//  Styler
//
//  Created by basalaev on 09.12.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import Foundation

public class VSStringStyleProvider<TextStyle: VSTextBaseStyle & VSTextParagraphStyle>: VSStringView {
    public var holderedText: NSAttributedString?

    public init(string: String) {
        holderedText = NSAttributedString(string: string)
    }
}

public protocol VSStringHolder {
    var holderString: String { get }
}

extension String: VSStringHolder {
    public var holderString: String {
        self
    }
}

extension VSStringStylable where Self: VSStringHolder {
    public func style(configurator: @escaping (VSStyleProvider<VSStringStyleProvider<TextStyle>>) -> Void) -> NSAttributedString? {
        let provider = VSStringStyleProvider<TextStyle>(string: self.holderString)
        configurator(VSInnerStyleProvider(view: provider))
        return provider.holderedText
    }
}
