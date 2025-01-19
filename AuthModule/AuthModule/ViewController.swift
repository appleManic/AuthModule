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
       // signup()
        educationSignup()
        
    
    }

    func signup() {
        let signupData = DefaultUserProfile(name: "test",
                                           email: "test@test.com",
                                           password: "Nasmwyer@313")
        let signup = SignupViewModel(handler: DefaultSignupHandler(), signupData: signupData)

        signup.signup()
    }
    
    func educationSignup() {
        let signupData = EducationUserProfile(name: "testEducation",
                                              email: "test@test.com",
                                              password: "Nasmwyer@313",
                                              education: "BSC")
        let signup = SignupViewModel(handler: EducationSignupHandler(), signupData: signupData)
        signup.signup()
    }

}

