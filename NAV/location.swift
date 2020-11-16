//
//  location.swift
//  NAV
//
//  Created by Sergio Salazar on 11/1/20.
//

import UIKit
import MapKit

class location: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor (patternImage: UIImage( named:"NavyBlue.png")!);
        var centerLocation = CLLocationCoordinate2DMake(27.495298,-97.8209043)
        var mapSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        var mapRegion = MKCoordinateRegion(center: centerLocation, span: mapSpan)
        self.MapView.setRegion(mapRegion, animated: true)
        
        
    }
    


}
