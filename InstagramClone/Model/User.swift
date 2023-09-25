//
//  User.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 21/09/2023.
//

import Foundation

struct User: Identifiable,Hashable, Codable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}


extension User {
    static var MOCK_USERS:[User] = [
        .init(id: NSUUID().uuidString, username: "emusk", profileImageUrl: "profile_elon", fullName: "Elon Musk", bio: "X, Tesla, SpaceX Founder",email: "emusk@gmail.com"),
        .init(id: NSUUID().uuidString, username: "mzukbergh", profileImageUrl: "profile_mark", fullName: "Mark Zuckerberg", bio: "META Founder",email: "mzukbergh@gmail.com"),
        .init(id: NSUUID().uuidString, username: "tcook", profileImageUrl: "profile_tim", fullName: "Tim Cook", bio: "Apple CEO",email: "tcook@gmail.com"),
        .init(id: NSUUID().uuidString, username: "snadella", profileImageUrl: "profile_staya", fullName: "Satya Nadella", bio: "Microsoft CEO",email: "emusk@gmail.com"),
        .init(id: NSUUID().uuidString, username: "jbezos", profileImageUrl: "profile_jeff", fullName: "Jeff Bezos", bio: "Amazon Founder",email: "jbezos@gmail.com")
    ]
}
