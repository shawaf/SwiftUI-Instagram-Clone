//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 17/09/2023.
//

import SwiftUI

struct MainTabView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView{
            FeedView()
                .tabItem{
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Upload Post")
                .tabItem{
                    Image(systemName: "plus.app")
                }
            
            Text("Notifications")
                .tabItem{
                    Image(systemName: "heart")
                }
            
            
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .tabItem{
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
        .toolbarBackground(.white, for: .tabBar)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
