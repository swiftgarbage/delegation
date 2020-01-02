//
//  InputViewController.swift
//  Delegation
//
//  Created by Алексей on 02.01.2020.
//  Copyright © 2020 Алексей. All rights reserved.
//

import UIKit

protocol InputViewControllerDelegate: class {
    func entered(_ text: String?, from inputViewController: InputViewController)
}

class InputViewController: UIViewController {

    @IBOutlet private var textField: UITextField!
    @IBOutlet private var sendButton: UIButton!

    weak var delegate: InputViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        sendButton.addTarget(self, action: #selector(send(_:)), for: .touchUpInside)
    }

    @objc func send(_ sender: UIButton) {
        delegate?.entered(textField.text, from: self)
    }
}
