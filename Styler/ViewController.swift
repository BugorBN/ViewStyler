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
                    .add(color: .red)
                    .add(fontStyle: .h2)
            }
            .add(letterSpacing: 10)
        
        // Do any additional setup after loading the view.
    }
}
