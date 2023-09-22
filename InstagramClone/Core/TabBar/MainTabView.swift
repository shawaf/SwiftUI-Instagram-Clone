//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 17/09/2023.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTabIndex = 0
    
    var body: some View {
        TabView(selection: $selectedTabIndex){
            FeedView()
                .onAppear{
                    selectedTabIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onAppear{
                    selectedTabIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            UploadPostView(tabIndex: $selectedTabIndex)
                .onAppear{
                    selectedTabIndex = 2
                }
                .tabItem{
                    Image(systemName: "plus.app")
                }.tag(2)
            
            Text("Notifications")
                .onAppear{
                    selectedTabIndex = 3
                }
                .tabItem{
                    Image(systemName: "heart")
                }.tag(3)
            
            
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .onAppear{
                    selectedTabIndex = 4
                }
                .tabItem{
                    Image(systemName: "person")
                }.tag(4)
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
