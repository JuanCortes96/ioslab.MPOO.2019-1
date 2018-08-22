//
//  SecondViewController.swift
//  gesture
//
//  Created by Usuario invitado on 22/8/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red

    }
    @IBAction func returnButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
