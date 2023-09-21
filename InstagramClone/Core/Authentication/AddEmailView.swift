//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 20/09/2023.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack( spacing: 12){
            Text("Add your Email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to sign in to your account")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            
            NavigationLink{
                CreateUserNameView()
                    .navigationBarBackButtonHidden(true)
               
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
