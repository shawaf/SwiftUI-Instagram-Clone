//
//  Post.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 21/09/2023.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
    
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is a test Caption for Post 1 ", likes: 100, imageUrl: "post1", timeStamp: Date(), user: User.MOCK_USERS[0]),
        
            .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is a test Caption for Post 2 ", likes: 2000, imageUrl: "post2", timeStamp: Date(), user: User.MOCK_USERS[1]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is a test Caption for Post 3 ", likes: 500, imageUrl: "post3", timeStamp: Date(), user: User.MOCK_USERS[2]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is a test Caption for Post 4 ", likes: 2, imageUrl: "post5", timeStamp: Date(), user: User.MOCK_USERS[3]),
        
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "This is a test Caption for Post 5 ", likes: 10, imageUrl: "post6", timeStamp: Date(), user: User.MOCK_USERS[4])
    ]
}
