//
//  RoundedCornerTextField.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/6/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import UIKit

class RoundedCornerTextField: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        borderStyle = .none
        layer.cornerRadius = bounds.height / 2
        layer.borderWidth = 1.0
        layer.borderColor = UIColor(red: 241/256, green: 241/256, blue: 241/256, alpha: 1).cgColor
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.0)
        layer.shadowRadius = 2
        layer.masksToBounds = false
        layer.shadowOpacity = 1.0
        // set backgroundColor in order to cover the shadow inside the bounds
        layer.backgroundColor = UIColor.white.cgColor
    }

    var textRectOffset: CGFloat = 20
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 0 + textRectOffset, y: 0 + (textRectOffset / 2), width: self.frame.width - textRectOffset, height: self.frame.height + textRectOffset)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 0 + textRectOffset, y: 0 + (textRectOffset / 2), width: self.frame.width - textRectOffset, height: self.frame.height + textRectOffset)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: 0 + textRectOffset, y: 0 + (textRectOffset / 2), width: self.frame.width - textRectOffset, height: self.frame.height - textRectOffset)
    }
}
