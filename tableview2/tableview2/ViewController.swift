//
//  ViewController.swift
//  tableview2
//
//  Created by Usuario invitado on 3/9/18.
//  Copyright © 2018 Usuario invitado. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tablita: UITableView!
    var Alumnos = ["Juan", "Oscar", "Erick", "Luis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = Alumnos[indexPath.row]
        return cell
    }
   
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceview, completion) in
            
            self.Alumnos.remove(at: indexPath.row)
            self.tablita.deleteRows(at: [indexPath], with: .fade)
            completion(true)
        }
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, sourceview, completion) in
            
        }
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        return swipeConfiguration
    }
}

