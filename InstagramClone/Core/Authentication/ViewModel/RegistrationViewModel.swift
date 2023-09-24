//
//  RegistrationViewModel.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 22/09/2023.
//

import Foundation

class RegisterationViewModel : ObservableObject {
    
    @Published var userName = ""
    @Published var email = ""
    @Published var password = ""
    
    
    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password, username: userName)
    }
    
  
}
