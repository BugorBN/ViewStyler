//
//  VSStyleProvider+Paragraph.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSTextView {
    var paragraph: NSMutableParagraphStyle {
        let paragraph = NSMutableParagraphStyle()

        guard let text = view.holderedText else {
            return paragraph
        }

        if let currentParagraph: NSParagraphStyle = text.attribute(.paragraphStyle) {
            paragraph.setParagraphStyle(currentParagraph)
        }

        return paragraph
    }

    @discardableResult
    func add(paragraphStyle: View.ParagraphStyle) -> VSStyleProvider<View> {
        let paragraph = self.paragraph
        paragraph.paragraphSpacing = paragraphStyle.paragraphSpacing
        view.addAttribute(.paragraphStyle, value: paragraph)
        return self
    }

    @discardableResult
    func add(lineBreakMode: NSLineBreakMode) -> VSStyleProvider<View> {
        let paragraph = self.paragraph
        paragraph.lineBreakMode = lineBreakMode
        view.addAttribute(.paragraphStyle, value: paragraph)
        return self
    }

    @discardableResult
    func add(textAlignment: NSTextAlignment) -> VSStyleProvider<View> {
        let paragraph = self.paragraph
        paragraph.alignment = textAlignment
        view.addAttribute(.paragraphStyle, value: paragraph)
        return self
    }

    @discardableResult
    func add(lineHeightMultiple: CGFloat) -> VSStyleProvider<View> {
        let paragraph = self.paragraph
        paragraph.lineHeightMultiple = lineHeightMultiple
        view.addAttribute(.paragraphStyle, value: paragraph)
        return self
    }

    @discardableResult
    func add(hyphenationFactor: Float) -> VSStyleProvider<View> {
        let paragraph = self.paragraph
        paragraph.hyphenationFactor = hyphenationFactor
        view.addAttribute(.paragraphStyle, value: paragraph)
        return self
    }
}
