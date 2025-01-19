//
//  ViewController.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signup()
        
    
    }

    func signup() {
        let signup = SignupViewModel(handler: SignupHandler())
        signup.email = "test@test.com"
        signup.password = "test@1D1"
        signup.username = "test"
        
        signup.signup()
    }

}

