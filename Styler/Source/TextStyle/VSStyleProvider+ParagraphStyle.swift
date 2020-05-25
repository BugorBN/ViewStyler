//
//  VSStyleProvider+Paragraph.swift
//  Styler
//
//  Created by basalaev on 17.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

public extension VSStyleProvider where View: VSStringView {
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
        if let paragraphSpacing = paragraphStyle.paragraphSpacing {
            add(paragraphSpacing: paragraphSpacing)
        }

        if let lineBreakMode = paragraphStyle.lineBreakMode {
            add(lineBreakMode: lineBreakMode)
        }

        if let textAlignment = paragraphStyle.textAlignment {
            add(textAlignment: textAlignment)
        }

        if let lineHeightMultiple = paragraphStyle.lineHeightMultiple {
            add(lineHeightMultiple: lineHeightMultiple)
        }

        if let hyphenationFactor = paragraphStyle.hyphenationFactor {
            add(hyphenationFactor: hyphenationFactor)
        }

        return self
    }

    @discardableResult
    func add(paragraphSpacing: CGFloat) -> VSStyleProvider<View> {
        let paragraph = self.paragraph
        paragraph.paragraphSpacing = paragraphSpacing
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
