//
//  UploadPostView.swift
//  InstagramClone
//
//  Created by Mohamed Elshawaf on 22/09/2023.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State var caption:String = ""
    @State var isFacebookOn = false
    @State var isImagePickerPresented = false
    @StateObject var uploadPostViewModel = UploadPostViewmModel()
    
    @Binding var tabIndex : Int
    
    var body: some View {
        VStack{
            // Title Bar
            HStack{
                Button{
                    caption = ""
                    uploadPostViewModel.selectedImage = nil
                    uploadPostViewModel.postImage = nil
                    tabIndex = 0 
                } label: {
                    Text("Cancel")
                }
                Spacer()
                
                Text("Upload Post")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                
                Spacer()
                Button{
                    
                } label: {
                    Text("Share")
                        .fontWeight(.semibold)
                }
                
            }.padding(.horizontal)
            
            // Post Image and Caption
            HStack(spacing: 8){
                if let image = uploadPostViewModel.postImage {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipped()
                }
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }.padding()
            
            // Post Options
            Divider()
            HStack{
                Text("Tag People or add collaborators")
                    .font(.footnote)
                    .fontWeight(.regular)
                Spacer()
                Image(systemName: "chevron.right")
            
            }.padding()
            
            Divider()
            HStack{
                Text("Add Location")
                    .font(.footnote)
                    .fontWeight(.regular)
                Spacer()
                Image(systemName: "chevron.right")
                
            }.padding(.horizontal)
                .padding(.vertical,5)
            
            Divider()
            HStack{
                Text("Facebook")
                    .font(.footnote)
                    .fontWeight(.regular)
                Spacer()
                Toggle("", isOn: $isFacebookOn)
                
            }.padding(.horizontal)
                .padding(.vertical,5)
            Divider()
            Spacer()
        }.onAppear{
            isImagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $isImagePickerPresented, selection: $uploadPostViewModel.selectedImage)
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView(tabIndex: .constant(0))
    }
}
