//
//  ViewControllerDetalle.swift
//  AppAutos
//
//  Created by user250441 on 11/7/23.
//

import UIKit

class ViewControllerDetalle: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    
    @IBOutlet weak var lblMarca: UILabel!
    
    @IBOutlet weak var lblModelo: UILabel!
    
    @IBOutlet weak var lblAño: UILabel!
    
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var lblKilometraje: UILabel!
    
    @IBOutlet weak var lblTipoMotor: UILabel!
    
    @IBOutlet weak var lblGarantia: UILabel!
    
    var auto: Autos!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgFoto.image = auto.foto
        lblMarca.text = auto.marca
        lblModelo.text = auto.modelo
        lblAño.text = auto.año
        lblPrecio.text = auto.precio
        lblKilometraje.text = auto.kilometraje
        lblTipoMotor.text = auto.tipoMotor
        lblGarantia.text = auto.garantia
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
