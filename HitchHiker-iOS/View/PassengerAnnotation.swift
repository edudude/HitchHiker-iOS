//
//  PassengerAnnotation.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/16/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import Foundation
import MapKit

class PassengerAnnotation: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var key: String
    
    init(coordinate: CLLocationCoordinate2D, key: String) {
        self.coordinate = coordinate
        self.key = key
        super.init()
    }
}
