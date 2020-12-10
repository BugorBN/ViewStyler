//
//  ViewController.swift
//  Styler
//
//  Created by basalaev on 16.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var firstLabel: UILabel!
    @IBOutlet private var secondLabel: UILabel!
    @IBOutlet private var button: UIButton!
    @IBOutlet private var textField: UITextField!
    @IBOutlet private var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstLabel.attributedText = "Hello World".style { styler in
            styler
                .add(fontStyle: .h1)
                .add(letterSpacing: 40)
                .add(color: .magenta)
        }

        secondLabel.styler
            .add(fontStyle: .h1)
            .add(substring: "Test text") { styler in
                styler
                    .add(fontStyle: .h2)
                    .add(color: .red)
            }
            .add(letterSpacing: 10)

        button.styler
            .add(shadowStyle: .default)
            .set(baseStyle: .default)
            .configure(state: .normal) { styler in
                styler.set(text: "normal")
                    .add(fontStyle: .h1)
                    .add(color: .magenta)
            }
            .configure(state: .highlighted) { styler in
                styler.set(text: "highlighted")
                    .add(fontStyle: .h1)
                    .add(color: .darkGray)
            }

        textField.styler
            .set(text: "Text")
            .add(fontStyle: .h1)
            .add(letterSpacing: 40)
            .placeholder { substyler in
                substyler
                    .set(text: "Placeholder")
                    .add(color: .brown)

            }
            .editingAttributes { substyler in
                substyler.add(fontStyle: .h1)
                    .add(color: .brown)
            }

        textView.styler
            .set(text: "Text")
            .add(fontStyle: .h1)
            .linkAttributes { styler in
                styler.add(color: .red)
            }
    }
}
