//
//  LoginView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 20/09/2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
    
                Spacer()

                // Logo Image
                Image("instagram_logo_black")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
            
                // Email + Password Text Fields
                VStack{
                    TextField("Enter your email", text: $viewModel.email)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Password", text: $viewModel.password)
                        .modifier(IGTextFieldModifier())
                }
                
                // Buttons
                Button{
                    print("Click on Forgot Password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }.frame(maxWidth: .infinity, alignment: .trailing)
                
                Button{
                    Task{
                        try await viewModel.loginUser()
                    }
                } label: {
                    Text("Login")
                        .modifier(IGButton())
                }
                .padding(.top)
                .padding(.horizontal, 24)
                
                // Or Divider
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2 - 45), height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2 - 45), height: 0.5)
                    
                }.foregroundColor(.gray)
                    .padding(.top,15)
                
                HStack{
                    Image("facebook_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Text("Contine with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }.padding(.top, 15)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 2){
                        Text("Don't have an Account?")
                        
                        Text("Signup").fontWeight(.semibold)
                    }.font(.footnote)
                }.padding(.vertical, 10)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
