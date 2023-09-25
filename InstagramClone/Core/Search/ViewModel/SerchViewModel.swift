//
//  SerchViewModel.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 25/09/2023.
//

import Foundation


class SearchViewModel : ObservableObject {
    @Published var users = [User]()
    
    init(){
        Task{
            try await fetchAllUsers()
        }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.getAllUsers()
    }
}
