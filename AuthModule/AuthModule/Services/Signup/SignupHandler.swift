//
//  SignupHandler.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//
import Foundation

class SignupHandler {
    private let validator = Validator()
    
    func signup(email: String, password: String, username:String, completion: @escaping (SignupResult) -> Void ) {
        guard isValidCredentials(email: email, password: password, username:username) else {
            completion(.failure(AuthError.invalidCredentials))
            return
        }
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) {
            // Validate email and password
            guard !email.isEmpty, !password.isEmpty, !username.isEmpty else {
                completion(.failure(NSError(domain: "AuthError",
                                            code: 400,
                                            userInfo: [NSLocalizedDescriptionKey: "Email or password cannot be empty."])))
                return
            }
            let user = UserProfile(name: username, email: email, password: password, id: UUID().hashValue)
            completion(.success(user))
            
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
