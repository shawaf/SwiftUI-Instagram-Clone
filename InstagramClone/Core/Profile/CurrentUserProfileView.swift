//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 21/09/2023.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var posts : [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                //Header
                VStack(spacing: 10){
                    //Pic and Status
                    HStack{
                        Image("profile").resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        HStack(spacing: 8){
                            UserStateView(value: 100, title: "Posts")
                            UserStateView(value: 200, title: "Followers")
                            UserStateView(value: 3000, title: "Following")
                            
                        }.padding(.horizontal)
                    }.padding(.horizontal)
                    
                    //Username and Bio
                    VStack(alignment: .leading, spacing: 4){
                        Text("Mohamed Elshawaf")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Software Engineer")
                            .font(.footnote)

                    }
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.horizontal)

                    //action Button
                    
                    Button(action: {
                        
                    }){
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity,minHeight: 35,maxHeight: 35)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius : 6)
                                .stroke(Color.gray, lineWidth: 1 ))
                    }.padding(.horizontal)
                        .padding(.top)
                    
                    Divider()
                }
                
                //Posts Grid View
                PostGridView(posts: posts)
            }
            
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[0])
    }
}
