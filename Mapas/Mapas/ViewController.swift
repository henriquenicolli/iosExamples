//
//  ViewController.swift
//  Mapas
//
//  Created by Henrique Nicolli on 07/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
   
    @IBOutlet weak var mapa: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let latidude: CLLocationDegrees = -23.534970
        let longitude: CLLocationDegrees = -46.635275
        
        let deltaLatitude: CLLocationDegrees = 0.2
        let deltaLongitude: CLLocationDegrees = 0.2
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latidude,longitude)
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: deltaLatitude, longitudeDelta: deltaLongitude)
        
        let regiao: MKCoordinateRegion = MKCoordinateRegion(center: location, span: areaVisualizacao)
        
        mapa.setRegion(regiao, animated: true)
        
    }


}

