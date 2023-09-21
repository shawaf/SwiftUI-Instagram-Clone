//
//  CompleteSignupView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 20/09/2023.
//

import SwiftUI

struct CompleteSignupView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack( spacing: 12){
            Spacer()

            Text("Welcom to instagram, Mohamed Elshawaf ")
                .multilineTextAlignment(.center)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .padding(.horizontal, 24)
            
            Text("Click below to complete registration and start using Instagram")
                .multilineTextAlignment(.center)
                .font(.footnote)
                .padding(.horizontal, 24)
            
            NavigationLink{
               MainTabView()
                    .navigationBarBackButtonHidden()
               
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
