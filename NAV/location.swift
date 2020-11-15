//
//  location.swift
//  NAV
//
//  Created by Sergio Salazar on 11/1/20.
//

import UIKit
import MapKit

class location: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let centerLocation = CLLocationCoordinate2DMake(27.504331316, -97.80583011)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let mapRegion = MKCoordinateRegion(center: centerLocation, span: mapSpan)
        self.MapView.setRegion(mapRegion, animated: true)
        
        
    }
    
    @IBOutlet weak var MapView: MKMapView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
