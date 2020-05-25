//
//  ViewController.swift
//  Styler
//
//  Created by basalaev on 16.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let label = UILabel()
        label.styler
            .add(fontStyle: .h1)
            .add(substring: "Test text") { styler in
                styler
                    .add(fontStyle: .h2)
                    .add(color: .red)
            }
            .add(letterSpacing: 10)

        let button = UIButton()
        button.styler
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

        let textField = UITextField()
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
    }
}
