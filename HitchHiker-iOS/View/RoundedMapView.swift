//
//  RoundedMapView.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/21/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import UIKit
import MapKit

class RoundedMapView: MKMapView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 10.0
    }
}
