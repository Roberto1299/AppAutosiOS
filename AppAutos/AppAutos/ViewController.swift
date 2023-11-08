//
//  ViewController.swift
//  AppAutos
//
//  Created by user250441 on 11/7/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var listaAutos = [
        Autos(foto: UIImage(named: "corolla"),marca: "Toyota", modelo: "Corolla", año: "2022", precio: "$25,000", kilometraje: "10,000 km", tipoMotor: "V6", garantia: "3 años"),
        Autos(foto: UIImage(named: "civic"),marca: "Honda", modelo: "Civic", año: "2021", precio: "$22,500", kilometraje: "8,000 km", tipoMotor: "Inline-4", garantia: "2 años"),
        Autos(foto: UIImage(named: "mustang"),marca: "Ford", modelo: "Mustang", año: "2023", precio: "$35,500", kilometraje: "5,000 km", tipoMotor: "V8", garantia: "5 años"),
        Autos(foto: UIImage(named: "camaro"),marca: "Chevrolet", modelo: "Camaro", año: "2022", precio: "$32,000", kilometraje: "7,500 km", tipoMotor: "V8", garantia: "4 años"),
        Autos(foto:UIImage(named: "altima"),marca: "Nissan", modelo: "Altima", año: "2023", precio: "$23,800", kilometraje: "9,200 km", tipoMotor: "Inline-4", garantia: "2 años")
    ]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Venta de autos"
    }
    
    
    //MARK: - Métodos de protocolo de Table View

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAutos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda")!
        celda.textLabel?.text = listaAutos[indexPath.row].marca
        celda.detailTextLabel?.text = listaAutos[indexPath.row].modelo + " " + listaAutos[indexPath.row].año + " " + listaAutos[indexPath.row].precio
        celda.imageView?.image = listaAutos[indexPath.row].foto!
        return celda
        
    }
    

    

    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "maps" {
            _ = segue.destination as? ViewControllerMaps
            
        }else{
            let vistaDetalle = segue.destination as! ViewControllerDetalle
            let indice = tableView.indexPathForSelectedRow!
            vistaDetalle.auto = listaAutos[indice.row]
            
        }

    }
    
    
    
}

