//
//  RoundedImageView.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/5/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }

}
