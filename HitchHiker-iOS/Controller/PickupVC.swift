//
//  PickupVC.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/21/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import UIKit

class PickupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func acceptTripBtnWasPressed(_ sender: Any) {
    }
    @IBAction func cancelBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
