//
//  LoginViewModel .swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 24/09/2023.
//

import Foundation

class LoginViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    
    func loginUser() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
    
}
