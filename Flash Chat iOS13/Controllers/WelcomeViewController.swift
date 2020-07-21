//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Amad Salmon on 21/07/2020.
//  Copyright © 2020 Amad Salmon. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleText = "⚡️FlashChat"
        let simpleTitleText = "FlashChat"
        
        titleLabel.text = ""
        
        var animatedIndex = 0.0
        var charIndex = 0.0
        
        Timer.scheduledTimer(withTimeInterval: 3.4, repeats: true) { (timer) in
            self.titleLabel.text = "⚡️"
            for letter in simpleTitleText {
                Timer.scheduledTimer(withTimeInterval: 0.1*charIndex, repeats: false) { (timer) in
                    self.titleLabel.text?.append(letter)
                }
                charIndex+=1
            }
        }
    }
    

}
