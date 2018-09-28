//
//  SecondViewViewController.swift
//  CarritoDeCompras
//
//  Created by MacBook on 17/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var fromFirstView : String = ""

    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiqueta.text = fromFirstView
    }



}
