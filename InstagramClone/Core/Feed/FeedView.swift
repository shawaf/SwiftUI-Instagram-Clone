//
//  FeedView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 18/09/2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POSTS) {post in
                        FeedCell(post: post)
                    }
                }.padding(.top, 10 )
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("instagram_logo_black")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
             
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .imageScale(.large)
                        .padding(.trailing, 5)
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "ellipsis.message")
                        .resizable()
                        .imageScale(.large)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
