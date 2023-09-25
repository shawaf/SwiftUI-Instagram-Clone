//
//  UserService.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 25/09/2023.
//

import Foundation
import Firebase

struct UserService {
    
    static func getAllUsers() async throws -> [User]{
        let usersSanbShot = try await Firestore.firestore().collection("users").getDocuments()
        return usersSanbShot.documents.compactMap{ try? $0.data(as: User.self)}
    }
}
