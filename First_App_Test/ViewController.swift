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
        myLabel.textColor = UIColor.green
        myLabel.font = UIFont(name: "Avenir-Light", size: 16.0)
        myLabel.numberOfLines = 0
        // This comment has been added via GitHub directory to test if Jenkins will pull to local project
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        myLabel.text = nil
        if let username = usernameTextField.text {
            myLabel.text = "Welcome \(username)! - Nice to meet you"
            myLabel.textColor = UIColor.orange
        }
        
        usernameTextField.text = nil
        passwordTextField.text = nil
        // This comment is new and has been added from GitHub directly
        // This is another new comment that has been added from GitHub directly
    }
    
}

