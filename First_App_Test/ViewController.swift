//
//  ViewController.swift
//  First_App_Test
//
//  Created by GoTennaAutomation on 2/22/19.
//  Copyright © 2019 GoTennaAutomation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "Fastlane has been installed, now performing tests"
        myLabel.textColor = UIColor.white
        myLabel.font = UIFont(name: "Avenir-Medium", size: 18.0)
        myLabel.numberOfLines = 0
    }

}

