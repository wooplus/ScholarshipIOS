//
//  SignUpView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/26/23.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack {
//            Image("your_logo") // Replace "your_logo" with the name of your logo image asset
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 150)
//                .padding(.top, 50)

            Text("Sign Up")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)

            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .padding(.top, 20)

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .padding(.top, 10)
                        
                Button(action: {
                    // Add your sign-in logic here
                    print("Sign In tapped!")
                    register()
                }) {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                }
            

          
            
//            SignInWithGoogleButton()
//            SignInWithFacebookButton()
//            SignInWithLinkedInButton()

//            Spacer()

//            NavigationLink(destination: SignUpView()) {
//                Text("Don't have an account? Sign Up")
//                    .foregroundColor(.blue)
//                    .padding(.bottom, 20)
//            }
        }
        .padding()
    }
    
  
    
    func register() {
        Auth.auth().createUser(withEmail: username, password: password) {
            result, error in if error != nil {
                print(error!.localizedDescription)
            }
        }
    }

}
#Preview {
    SignUpView()
}
