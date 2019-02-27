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
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = ""
        myLabel.textColor = UIColor.white
        myLabel.font = UIFont(name: "Avenir-Medium", size: 18.0)
        myLabel.numberOfLines = 0
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        if let username = usernameTextField.text {
            myLabel.text = "Welcome, \(username)"
        }
        
        usernameTextField.text = nil
        passwordTextField.text = nil
    }
    
}

