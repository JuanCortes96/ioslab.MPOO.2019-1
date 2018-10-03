//
//  SecondViewViewController.swift
//  CarritoDeCompras
//
//  Created by MacBook on 17/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var fromFirstView : Producto = Producto(nombre: "", precio: 0.0)
    var carritoDos : [Producto] = []

    @IBOutlet weak var etiqueta: UILabel!
    
    @IBAction func comprar(_ sender: UIButton) {
        carritoDos.append(fromFirstView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        etiqueta.text = fromFirstView.nombre + "      " + String(fromFirstView.precio)
    }



}
