//
//  ViewController.swift
//  CarritoDeCompras
//
//  Created by MacBook on 17/09/18.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TablaSupermercado: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var  secciones: [Producto] = [Producto(nombre: "carne", precio: 23.50), ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Celda1", for: indexPath)
        
        cell.textLabel?.text = secciones[indexPath.row].nombre
        
        
        return cell
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "SecondView"{
            let indexPath = TablaSupermercado.indexPathForSelectedRow
            let destino = segue.destination as! SecondViewController
            destino.fromFirstView = secciones[(indexPath?.row)!].nombre + "     " + String(secciones[(indexPath?.row)!].precio)
            
        }
        
    }

    @IBAction func unwindSecondView( segue: UIStoryboardSegue){
        
    }
}

