//
//  AuthServiceProtocol.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//

import Foundation
import UIKit

typealias AuthResult = Result<User, Error>

protocol AuthServiceProtocol {
    func login(email: String, password: String, completion: @escaping (AuthResult) -> Void )
    func signup(email: String, password: String, completion: @escaping (AuthResult) -> Void )
    func loginWithOAuth(provider: OAuthProvider, presentingViewController: UIViewController?, completion: @escaping (AuthResult) -> Void )
}
