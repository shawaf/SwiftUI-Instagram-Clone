//
//  ContentViewModel.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 22/09/2023.
//

import Foundation
import FirebaseAuth
import Combine


class ContentViewModel : ObservableObject {
    
    private let service = AuthService.shared
    private var cancelables = Set<AnyCancellable>()

    
    @Published var userSession : FirebaseAuth.User?
    
    init() {
        setupSubscriber()
    }
    
    func setupSubscriber(){
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancelables)
    }
}
