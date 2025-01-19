//
//  Untitled.swift
//  AuthModule
//
//  Created by Pawan selokar on 19/01/25.
//

import Foundation

class EducationSignupHandler: SignupHandling {
    typealias SignUpData = EducationUserProfile
    
    private let validator = Validator()
    
    func singup(data: SignUpData, completion: @escaping (SignupResult) -> Void) {
        guard isValidCredentials(email: data.email, password: data.password, username:data.name) else {
            completion(.failure(AuthError.invalidCredentials))
            return
        }
        DispatchQueue.global().asyncAfter(deadline: .now() + 2.0) {
            guard !data.email.isEmpty, !data.password.isEmpty, !data.name.isEmpty else {
                completion(.failure(SignupError.invalidCredentials))
                return
            }
            
            let user = EducationUserProfile(name: data.name, email: data.email,
                                            password: data.password, education: data.education)
            return completion(.success(user))
        }

    }
    
    private func isValidCredentials(email:String, password:String, username:String ) -> Bool {
        
        guard validator.isValidEmail(email) else {
            print(SignupError.invalidEmail.localizedDescription)
            return false
        }
        
        guard validator.isValidPassword(password) else {
            print(SignupError.weakPassword.localizedDescription)
            return false
        }
        
        guard validator.isValidUsername(username) else {
            print(SignupError.invalideUsername.localizedDescription)
            return false
        }
        
        return validator.isValidEmail(email) && validator.isValidPassword(password) && validator.isValidUsername(username)
    }
}
