//
//  Validator.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//


import Foundation

// MARK: - Validator

class Validator {
    typealias UserProfileData=UserProfileProtocol
    /// Validates an email address.
    /// - Parameter email: The email string to validate.
    /// - Returns: A Boolean indicating whether the email is valid.
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    /// Validates a password.
    /// - Parameter password: The password string to validate.
    /// - Returns: A Boolean indicating whether the password is valid.
    func isValidPassword(_ password: String) -> Bool {
        // Example: Minimum 8 characters, at least one uppercase, one lowercase, and one number
        let passwordRegex = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: password)
    }
    
    /// Validates a username.
    /// - Parameter username: The username string to validate.
    /// - Returns: A Boolean indicating whether the username is valid.
    func isValidUsername(_ username: String) -> Bool {
        // Example: Minimum 3 characters, only letters and numbers allowed
        let usernameRegex = "^[a-zA-Z0-9]{3,}$"
        let usernamePredicate = NSPredicate(format: "SELF MATCHES %@", usernameRegex)
        return usernamePredicate.evaluate(with: username)
    }
}
