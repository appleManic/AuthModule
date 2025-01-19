//
//  SignupViewModel.swift
//  AuthModule
//
//  Created by Pawan selokar on 17/01/25.
//


/**
 /// - SignupViewModel : A generic ViewModel class that handles user signup operations using a specified handler conforming to the SignupHandling protocol.
 
 
 */
class SignupViewModel<Handler:SignupHandling> {
    
    var isLoading: Bool = false
    var errorMessage: String?
    var isSignupSuccessful: Bool = false
    
    var signupHandler: Handler?
    var data: Handler.SignUpData?
    
    init(handler:Handler, signupData:Handler.SignUpData) {
        self.signupHandler = handler
        data = signupData
    }
    
    func signup() {
        isLoading = true
        guard let signupData = data else {
                    isLoading = false
                    errorMessage = "Signup data is not available"
                    return
        }
            
        signupHandler?.singup(data: signupData) { result in
            self.isLoading = false
            switch result {
            case .success(let user):
                self.isSignupSuccessful = true
                self.displaySuccessMessage(for: user)
            case .failure(let error):
                self.errorMessage = error.localizedDescription
                print("Something went wrong: \(error.localizedDescription)")
            }
        }
    }
    
    private func displaySuccessMessage(for user:UserProfileProtocol) {
        print(self.isSignupSuccessful)
        print("The user \(user.name) has been signed up successfully")
    }
}


