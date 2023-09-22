//
//  AuthService.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 22/09/2023.
//

import Foundation
import FirebaseAuth


class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email:String, password: String) async throws{
        
    }
    
    func createUser(email: String, password:String, username: String) async throws{
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout(){
        
    }
}
