//
//  IGButton.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 20/09/2023.
//

import SwiftUI

struct IGButton: ViewModifier {
    func body(content:Content)-> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,maxHeight: 44)
            .background(.blue)
            .cornerRadius(10)
    }
}
