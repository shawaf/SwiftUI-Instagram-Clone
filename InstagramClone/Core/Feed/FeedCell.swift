//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 18/09/2023.
//

import SwiftUI

struct FeedCell: View {
    let post: Post

    var body: some View {
            
        VStack {
            // Image + Username
            HStack{
                if let user = post.user {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                Spacer()
            }
            .padding(.leading, 8)
            
            //Post Image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
                
            
            //Action Buttons
            HStack(spacing: 10){
                Button{
                    print("Like Post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    print("Common on Post")
                    
                } label: {
                    Image(systemName: "message")
                        .imageScale(.large)
                }
                
                Button{
                    print("Share Post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
                
                Button{
                    print("Bookmark")
                } label: {
                    Image(systemName: "bookmark")
                        .imageScale(.large)
                }
            }
            .padding(.leading, 8)
            .padding(.trailing, 10)
            .padding(.top, 4)
            .foregroundColor(.black)
            

            // Likes Label
            Text("\(post.likes) Likes")
                .fontWeight(.semibold)
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 1)
                .padding(.leading, 10)
        
            // Caption Label
            HStack{
                Text("\(post.user?.username ?? "") ").fontWeight(.semibold) +
                Text(post.caption)
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 1)
            .padding(.leading, 10)
            
            Text("6 ago")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[1])
    }
}
