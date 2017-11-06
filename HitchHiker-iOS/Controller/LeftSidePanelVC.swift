//
//  LeftSidePanelVC.swift
//  HitchHiker-iOS
//
//  Created by Michael Alexander on 11/5/17.
//  Copyright © 2017 Michael Alexander. All rights reserved.
//

import UIKit

class LeftSidePanelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func singUpLoginBtnWasPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        present(loginVC!, animated: true, completion: nil)
    }
    
    
}
