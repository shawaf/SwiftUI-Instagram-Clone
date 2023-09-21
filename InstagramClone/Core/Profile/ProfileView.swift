//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 17/09/2023.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    @Environment(\.dismiss) var dismiss
    private let gridItems : [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
            ScrollView {
                //Header
                VStack(spacing: 10){
                    //Pic and Status
                    HStack{
                        Image(user.profileImageUrl ?? "").resizable()
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
                        if let fullname = user.fullName {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }

                    }
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .padding(.horizontal)

                    //action Button
                    
                    Button(action: {
                        
                    }){
                        Text("Follow")
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
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("post0")
                            .resizable()
                            .scaledToFit()
                            
                    }
                }
            }
            
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}
