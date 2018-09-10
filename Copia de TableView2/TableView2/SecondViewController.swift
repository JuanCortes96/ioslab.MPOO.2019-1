//
//  SecondViewController.swift
//  TableView2
//
//  Created by MacBook on 10/09/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var fromFirstView : String = ""

    @IBOutlet weak var etiqueta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        etiqueta.text = fromFirstView
        // Do any additional setup after loading the view.
    }


}
