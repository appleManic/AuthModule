//
//  OAuthProviders.swift
//  AuthModule
//
//  Created by Pawan selokar on 16/01/25.
//

enum OAuthProvider {
    case facebook, google, apple
}

extension OAuthProvider {
    var displayName: String {
        switch self {
        case .facebook: return "Facebook"
        case .google: return "Google"
        case .apple: return "Apple"
        }
    }
}
