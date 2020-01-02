//
//  MainViewController.swift
//  Delegation
//
//  Created by Алексей on 26.12.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet private var titleLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toInputViewController", let inputViewController = segue.destination as? InputViewController {
           inputViewController.delegate = self
        }
    }

    func enter(text: String?) {
        titleLabel.text = text
    }
}

extension MainViewController: InputViewControllerDelegate {

    func entered(_ text: String?, from inputViewController: InputViewController) {
        enter(text: text)
    }
}
