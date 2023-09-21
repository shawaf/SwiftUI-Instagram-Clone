//
//  IGTextFieldModifier.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 20/09/2023.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content:Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}

//struct IGTextFieldModifier_Previews: PreviewProvider {
//    static var previews: some View {
//        IGTextFieldModifier()
//    }
//}
