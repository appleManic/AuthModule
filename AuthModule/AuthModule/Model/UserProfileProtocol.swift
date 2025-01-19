//
//  UserProfile.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//

struct UserProfile {
    var name: String
    var email: String
    var password: String
    var id:Int
}

protocol UserProfileProtocol {
    var name: String { get }
    var email:String { get }
    var password:String { get }
}
