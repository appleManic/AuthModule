//
//  SignupHandling.swift
//  AuthModule
//
//  Created by Pawan selokar on 19/01/25.
//

protocol SignupHandling {
    associatedtype SignUpData:UserProfileProtocol
    func singup(data:SignUpData, completion:@escaping (SignupResult) -> Void)
}
