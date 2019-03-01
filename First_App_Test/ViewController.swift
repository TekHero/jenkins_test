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
        myLabel.text = "Please sign in"
        myLabel.textColor = UIColor.cyan
        myLabel.font = UIFont(name: "Avenir-Light", size: 16.0)
        myLabel.numberOfLines = 0
        // This comment has been added via GitHub directory to test if Jenkins will pull to local project
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        if let username = usernameTextField.text {
            myLabel.text = "Welcome \(username)! - Nice to meet you"
        }
        
        myLabel.text = nil
        usernameTextField.text = nil
        passwordTextField.text = nil
    }
    
}

