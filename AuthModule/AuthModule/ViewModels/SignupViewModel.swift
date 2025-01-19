//
//  SignupViewModel.swift
//  AuthModule
//
//  Created by Pawan selokar on 17/01/25.
//

class SignupViewModel {
    
    var email: String = ""
    var password: String = ""
    var username: String = ""
    var isLoading: Bool = false
    var errorMessage: String?
    var isSignupSuccessful: Bool = false
    
    var signupHandler:SignupHandler?
    
    init(handler:SignupHandler) {
        self.signupHandler = handler
    }
    
    func signup() {
        isLoading = true
        signupHandler?.signup(email: email, password: password, username: username) { result in
           // guard let self = self else { return }
            self.isLoading = false
            switch result {
            case .success(let user):
                self.isSignupSuccessful = true
                self.displaySuccessMessage(for: user)
            case .failure(let error):
                print("Something went wrong \(error.localizedDescription)")
            }
        }
    }
    
    private func displaySuccessMessage(for user:UserProfile) {
        print(self.isSignupSuccessful)
        print("The user \(user.name) has been signed up successfully")
    }
}
