//
//  UIViewExt.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/5/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import UIKit

extension UIView {
    func fadeTo(alphaValue: CGFloat, withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            self.alpha = alphaValue
        }
    }
}
