//
//  AuthManager.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//

import UIKit
class AuthManager: AuthServiceProtocol {
    
    static let shared = AuthManager()
    private init() {}
    
    func login(email: String, password: String, completion: @escaping (AuthResult) -> Void) {
    }
    
    func signup(email: String, password: String, username:String, completion: @escaping (SignupResult) -> Void) {
        SignupHandler().signup(email: email, password: password, username: username, completion: completion)
    }
    
    func loginWithOAuth(provider: OAuthProvider, presentingViewController: UIViewController?, completion: @escaping (AuthResult) -> Void) {
    }
    
}
