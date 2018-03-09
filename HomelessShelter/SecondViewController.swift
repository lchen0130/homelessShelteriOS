//
//  SecondViewController.swift
//  HomelessShelter
//
//  Created by Leo Chen on 3/7/18.
//  Copyright © 2018 Leo Chen. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class Login: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailField.text!, password: passwordField.text!) {(user, error) in
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

