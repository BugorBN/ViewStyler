//
//  VSStyleProvider+VSButton.swift
//  ViewStyler
//
//  Created by basalaev on 23.05.2020.
//  Copyright © 2020 Heads and Hands. All rights reserved.
//

import UIKit

private class ButtonCommand {
    let block: () -> Void

    init(block: @escaping () -> Void){
        self.block = block
    }

    @objc func action() {
        block()
    }
}

private let mapTable = NSMapTable<AnyObject, ButtonCommand>.weakToStrongObjects()

public extension VSStyleProvider where View: VSButton {
    @discardableResult
    func configure(state: UIControl.State, configurator: @escaping (VSStyleProvider<VSWrappedButton<View>>) -> Void) -> VSStyleProvider<View> {
        configurator(VSInnerStyleProvider(view: VSWrappedButton(view: view, state: state)))
        return self
    }
}

public extension VSStyleProvider where View: UIButton {
    @discardableResult
    func add(command: @escaping () -> Void, event: UIControl.Event = .touchUpInside) -> Self {
        let command = ButtonCommand(block: command)
        view.removeTarget(nil, action: nil, for: event)
        view.addTarget(command, action: #selector(command.action), for: event)
        mapTable.setObject(command, forKey: view)
        return self
    }
}

public extension VSStyleProvider where View: VSButton & UIView {
    @discardableResult
    func hideViewIfEmpty(state: UIControl.State) -> Self {
        let text = VSWrappedButton(view: view, state: state).holderedText
        let hidden: Bool

        if let text = text {
            hidden = text.string.isEmpty
        } else {
            hidden = true
        }

        view.isHidden = hidden
        return self
    }
}
