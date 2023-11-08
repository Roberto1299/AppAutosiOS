//
//  Autos.swift
//  AppAutos
//
//  Created by user250441 on 11/7/23.
//

import UIKit

class Autos: NSObject {
    var foto: UIImage!
    var marca: String
    var modelo: String
    var año: String
    var precio: String
    var kilometraje: String
    var tipoMotor: String
    var garantia: String
    
    
    init(foto: UIImage!, marca: String, modelo: String, año: String, precio: String, kilometraje: String, tipoMotor: String, garantia: String) {
        self.foto = foto
        self.marca = marca
        self.modelo = modelo
        self.año = año
        self.precio = precio
        self.kilometraje = kilometraje
        self.tipoMotor = tipoMotor
        self.garantia = garantia
    }

}
