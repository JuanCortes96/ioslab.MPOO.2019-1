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

    var  secciones: [Producto] = [Producto(nombre: "Jamon", precio: 43.50), Producto(nombre: "Leche", precio: 17.50), Producto(nombre: "Huevos", precio: 21.30), Producto(nombre: "Pan", precio: 22.00)]
    
    var carritoUno : [Producto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
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
            destino.fromFirstView = secciones[(indexPath?.row)!]
            
            destino.carritoDos = carritoUno
            
        }
        
        if segue.identifier == "ThirdView"{
            let indexPath = TablaSupermercado.indexPathForSelectedRow
            let destino = segue.destination as! ThirdViewController
            destino.fromFirstView = secciones[(indexPath?.row)!]
            
            destino.carritoTres = carritoUno
        }
    }
    


    @IBAction func unwindSecondView( segue: UIStoryboardSegue){
        if let origin = segue.source as? SecondViewController{
            let data = origin.carritoDos
            carritoUno = data
        }
    }
    
    @IBAction func unwindThirdView( segue: UIStoryboardSegue){
        if let origin = segue.source as? ThirdViewController{
            let data = origin.carritoTres
            carritoUno = data
        }
    }
    
    
}

