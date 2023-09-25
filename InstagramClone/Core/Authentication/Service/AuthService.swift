//
//  AuthService.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 22/09/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

class AuthService {
    
    private let userCollection = "users"
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    static let shared = AuthService()
    
    init(){
        Task{
            try await loadUserData()
        }
    }
    
    @MainActor
    func login(withEmail email:String, password: String) async throws{
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await self.loadUserData()
        } catch {
            print("Debug : Failed to Login with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(email: String, password:String, username: String) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await uploadUserData(uid: result.user.uid, email: email, username: username)
        } catch {
            print("Debug : Failed to Create New User with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func loadUserData() async throws {
        self.userSession = Auth.auth().currentUser
        guard let currentUid = self.userSession?.uid else {return}
        let currentUserData = try? await Firestore.firestore().collection(userCollection).document(currentUid).getDocument()
        self.currentUser = try? currentUserData?.data(as: User.self)
    }
    
    func signout(){
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    private func uploadUserData(uid: String, email: String, username: String) async {
        let user = User(id: uid, username: username, email: email)
        currentUser = user
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {return }
        try? await Firestore.firestore().collection(userCollection).document(uid).setData(encodedUser)
    }
}
