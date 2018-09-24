//
//  ViewController.swift
//  AutoLayout
//
//  Created by MacBook on 19/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var etiqueta : UILabel = {
        let lb = UILabel()
        lb.text = "Label"
        lb.font = UIFont(name: "Arial", size: 40.0)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    var button : UIButton = {
        let bt = UIButton()
        bt.setTitle("Puchame", for: .normal)
        bt.backgroundColor = UIColor.red
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(etiqueta)
        etiqueta.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true
        etiqueta.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        /* Esto hace que muera
         button.topAnchor.constraint(equalTo: etiqueta.bottomAnchor, constant: 20).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true*/
    }

}

