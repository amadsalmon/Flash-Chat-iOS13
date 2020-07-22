//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Amad Salmon on 21/07/2020.
//  Copyright © 2020 Amad Salmon. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let emailAddress = emailTextfield.text {
            if let password = passwordTextfield.text{
                Auth.auth().createUser(withEmail: emailAddress, password: password) { (authResult, error) in
                    if let e = error {
                        self.errorLabel.isHidden = false
                        self.errorLabel.text = "Error: \(e.localizedDescription)"
                        print(e.localizedDescription)
                    } else {
                        self.errorLabel.isHidden = true
                        self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                    }
                }
            } else{
                print("Please enter password.")
            }
        } else{
            print("Please enter email address.")
        }
    }
    
}
