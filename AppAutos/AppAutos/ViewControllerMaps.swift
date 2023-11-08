//
//  ViewControllerMaps.swift
//  AppAutos
//
//  Created by user250441 on 11/8/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerMaps: UIViewController {
    let map = MKMapView()
    let guadalajaraCoordinate = CLLocationCoordinate2D(latitude: 20.6597, longitude: -103.3496)
    
    // Datos de los lugares y modelos de los autos
    let autos: [(modelo: String, coordenadas: CLLocationCoordinate2D)] = [
        ("Corolla", CLLocationCoordinate2D(latitude: 20.6736, longitude: -103.4057)), // Modelo 1
        ("Civic", CLLocationCoordinate2D(latitude: 20.6814, longitude: -103.3496)), // Modelo 2
        ("Mustang", CLLocationCoordinate2D(latitude: 20.7032, longitude: -103.3825)), // Modelo 3
        ("Camaro", CLLocationCoordinate2D(latitude: 20.6948, longitude: -103.4044)), // Modelo 4
        ("Altima", CLLocationCoordinate2D(latitude: 20.6668, longitude: -103.3905))  // Modelo 5
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(map)
        map.frame = view.bounds
        // Configurar la región del mapa
        let region = MKCoordinateRegion(center: guadalajaraCoordinate, latitudinalMeters: 5000, longitudinalMeters: 5000)
        map.setRegion(region, animated: true)
        
        for auto in autos {
            let annotation = MKPointAnnotation()
            annotation.coordinate = auto.coordenadas
            annotation.title = auto.modelo
            map.addAnnotation(annotation)
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            if annotation is MKUserLocation {
                return nil
            }
            
            let reuseIdentifier = "customAnnotationView"
            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: reuseIdentifier)
            
            if annotationView == nil {
                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: reuseIdentifier)
                annotationView?.canShowCallout = true
            } else {
                annotationView?.annotation = annotation
            }
            
            return annotationView
        }
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
