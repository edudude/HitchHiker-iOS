//
//  PickupVC.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/21/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import UIKit
import MapKit

class PickupVC: UIViewController {

    @IBOutlet weak var pickupMapView: RoundedMapView!
    
    var regionRadius: CLLocationDistance = 2000
    var pin: MKPlacemark? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func acceptTripBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func cancelBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension PickupVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "pickupPoint"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        } else {
            annotationView?.annotation = annotation
        }
        annotationView?.image = UIImage(named: "destinationAnnotation")
        
        return annotationView
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateReion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        pickupMapView.setRegion(coordinateReion, animated: true)
    }
    
    func dropPinForPlacemark(placemark: MKPlacemark) {
        pin = placemark
        
        for annotation in pickupMapView.annotations {
            pickupMapView.removeAnnotation(annotation)
        }
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = placemark.coordinate
        
        pickupMapView.addAnnotation(annotation)
    }
    
}
