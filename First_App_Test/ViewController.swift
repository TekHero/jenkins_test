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
        myLabel.text = "This is definitely going to work right now!"
        myLabel.textColor = UIColor.cyan
        myLabel.font = UIFont(name: "Avenir-Medium", size: 18.0)
        myLabel.numberOfLines = 0
    }

}

