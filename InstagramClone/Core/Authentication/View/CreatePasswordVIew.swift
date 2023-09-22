//
//  CreatePasswordVIew.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 20/09/2023.
//

import SwiftUI

struct CreatePasswordVIew: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack( spacing: 12){
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal, 24)
            
            TextField("Password", text: $password )
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            
            NavigationLink{
                CompleteSignupView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .modifier(IGButton())
            }
            .padding(.top)
            .padding(.horizontal, 24)
            
            Spacer()
        }
        .toolbar {
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

struct CreatePasswordVIew_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordVIew()
    }
}
