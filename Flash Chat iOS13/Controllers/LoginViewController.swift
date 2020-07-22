//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Amad Salmon on 21/07/2020.
//  Copyright © 2020 Amad Salmon. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let typedEmail = emailTextfield.text {
            if let typedPassword = passwordTextfield.text{
                Auth.auth().signIn(withEmail: typedEmail, password: typedPassword) { (authDataResult, error) in
                    if let e = error {
                        self.errorLabel.isHidden = false
                        self.errorLabel.text = "Error: \(e.localizedDescription)"
                        print(e.localizedDescription)
                    } else {
                        self.errorLabel.isHidden = true
                        self.performSegue(withIdentifier: "LoginToChat", sender: self)
                    }
                }
            }
        }
    }
    
}
