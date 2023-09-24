//
//  CompleteSignupView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 20/09/2023.
//

import SwiftUI

struct CompleteSignupView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel : RegisterationViewModel

    var body: some View {
        VStack( spacing: 12){
            Spacer()

            Text("Welcom to instagram, \(viewModel.userName) ")
                .multilineTextAlignment(.center)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .padding(.horizontal, 24)
            
            Text("Click below to complete registration and start using Instagram")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .padding(.horizontal, 24)
            
            Button{
                Task{
                    try await viewModel.createUser()
                }
            } label: {
                Text("Complete Sign up")
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

struct CompleteSignupView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignupView()
    }
}
