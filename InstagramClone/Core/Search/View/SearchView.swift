//
//  SearchView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 18/09/2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var searchViewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack (spacing: 12){
                    ForEach(searchViewModel.users){ user in
                        NavigationLink(value: user) {
                            HStack{
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.gray)
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading){
                                    Text(user.username).fontWeight(.semibold)
                                    if let fullname = user.fullName {
                                        Text(fullname)
                                    }
                                }
                                .foregroundColor(.black)
                                .font(.footnote)
                                
                                Spacer()
                            }.padding(.horizontal)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 8)
                    .searchable(text: $searchText, prompt: "Search...")
                }
            }.navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
                    .navigationBarBackButtonHidden()
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
