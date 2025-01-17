//
//  AuthError.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//

enum AuthError: Error {
    case invalidCredentials
    case networkError
    case missingID
    case unableToFetechData
    case unknown(Error)
    
    var localizedDescription: String {
        switch self {
            case .invalidCredentials: return "Invalid Credentials"
            case .networkError: return "Network Error"
            case .missingID: return "Missing Client ID"
            case .unableToFetechData: return "Unable to Fetch Data"
            case .unknown(let error): return error.localizedDescription
        }
    }
}

