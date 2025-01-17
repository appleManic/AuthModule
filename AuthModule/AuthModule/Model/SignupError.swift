//
//  Untitled.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//

enum SignupError: Error {
    case invalidEmail
    case weakPassword
    case emailAlreadyExists
    case unknownError
    case invalideUsername

    var localizedDescription: String {
        switch self {
        case .invalidEmail:
            return "The email address format is invalid."
        case .weakPassword:
            return "The password is too weak. It must contain at least 8 characters, including an uppercase letter, a lowercase letter, and a number."
        case .emailAlreadyExists:
            return "The email is already registered."
        case .unknownError:
            return "An unknown error occurred."
        case .invalideUsername:
            return "The username is too short."
        }
    }
}
