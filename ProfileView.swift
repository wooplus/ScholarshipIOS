//
//  ProfileView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/28/23.
//

import SwiftUI
struct ProfileView: View {
    @State private var isTextFieldEnabled = false
    @State private var text = ""
    var body: some View {
        NavigationView {
            VStack {
                Image("cat")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .foregroundColor(.blue)
                    .padding(.top, 20)
            
                Divider()
                    .padding()

                
                HStack {
                    Text("Name: ")
                        .foregroundColor(.blue)
                    
                    TextField("John Doe", text: $text)
                                   .padding()
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                   .disabled(!isTextFieldEnabled)
                                   .foregroundColor(.black)
                }
                
                HStack {
                    Text("Email: ")
                        .foregroundColor(.blue)
                    
                    TextField("john.doe@example.com", text: $text)
                                   .padding()
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                   .disabled(!isTextFieldEnabled)
                                   .foregroundColor(.black)
                }
                
                HStack {
                    Text("Phone: ")
                        .foregroundColor(.blue)
                    
                    TextField("+1 (555) 123-4567", text: $text)
                                   .padding()
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                   .disabled(!isTextFieldEnabled)
                                   .foregroundColor(.black)
                }
                
                HStack {
                    Text("GPA: ")
                        .foregroundColor(.blue)
                    
                    TextField("3.4", text: $text)
                                   .padding()
                                   .textFieldStyle(RoundedBorderTextFieldStyle())
                                   .disabled(!isTextFieldEnabled)
                                   .foregroundColor(.black)
                                   .bold()
                }
            }
            .padding()
            .padding(.bottom, 250)
            .navigationBarItems(trailing: Button(action: {
                // Action for the edit button
                if(isTextFieldEnabled) {
                    isTextFieldEnabled = false
                } else {
                    isTextFieldEnabled = true
                }
            }) {
                Text("Edit")
                Image(systemName: "pencil.circle.fill")
                    .imageScale(.large)
                    .foregroundColor(.blue)
            })
        }
    }
}

#Preview {
    ProfileView()
}
