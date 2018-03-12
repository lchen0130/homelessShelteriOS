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

class SecondViewController: UIViewController {



    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        let email = emailField.text!
        let pass = passwordField.text!

        if email != "" && pass != "" {
            Auth.auth().signIn(withEmail: email, password: pass) {(user, error) in
                if user != nil { // if user exists
                    self.performSegue(withIdentifier: "toMain", sender: self)
                } else {
                    print((error?.localizedDescription) ?? "None")
                }
            }
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

