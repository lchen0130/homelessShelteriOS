//
//  FirstViewController.swift
//  HomelessShelter
//
//  Created by Leo Chen on 3/7/18.
//  Copyright © 2018 Leo Chen. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var confirmPassField: UITextField!

    @IBAction func registerButton(_ sender: Any) {
        let name = nameField.text!
        let email = emailField.text!
        let pass = passwordField.text!
        let confirmPass = confirmPassField.text!
        
        if name != "" && email != "" && (pass == confirmPass) {
            Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
                print("created user")
                if user != nil {
                    print("success")
                }
            }
            
        } else {
            print("something went wrong")
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

