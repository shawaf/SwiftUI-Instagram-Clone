//
//  UserStateView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 17/09/2023.
//

import SwiftUI

struct UserStateView: View {
    
    let value : Int
    let title : String
    
    var body: some View {
        VStack(spacing: 1){
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 70)
    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView(value: 12, title: "Posts")
    }
}
