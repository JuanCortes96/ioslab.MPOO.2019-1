//
//  ViewController.swift
//  gesture
//
//  Created by Usuario invitado on 22/8/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gesture(_ sender: UITapGestureRecognizer) {
        var x = sender.location(in: view).x
        var y = sender.location(in: view).y
        view.backgroundColor = UIColor(red: x/400, green: y/400, blue: (x-y)/400, alpha: 1.0)
    }
    
}

