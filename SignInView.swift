//
//  SignInView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/25/23.
//

import SwiftUI
import Firebase

extension Color {
    init(hex: Int, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255.0,
            green: Double((hex >> 8) & 0xFF) / 255.0,
            blue: Double(hex & 0xFF) / 255.0,
            opacity: alpha
        )
    }
}


struct SignInView: View {
    @State private var username = ""
    @State private var password = ""
    
 
    
    
    var body: some View {
        VStack {
//            Image("your_logo") // Replace "your_logo" with the name of your logo image asset
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 150)
//                .padding(.top, 50)

            Text("Sign In")
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
            
            HStack {
                Spacer()
                Button("Forgot Password?") {
                    // button func here
                }
                           .foregroundColor(.blue)
                           .padding(.trailing, 30)
                           .multilineTextAlignment(.trailing)
                           .padding(.top, 20)
            }
            
            NavigationLink(destination: FormView()) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
            }
            
//                Button(action: {
//                    // Add your sign-in logic here
//                    print("Sign In tapped!")
//                    login()
//                    
//                }) {
//                    Text("Sign In")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 50)
//                        .background(Color.green)
//                        .cornerRadius(10)
//                        .padding(.horizontal, 20)
//                        .padding(.top, 20)
//                }
            
            SignInWithGoogleButton()
            SignInWithFacebookButton()
            SignInWithLinkedInButton()

            Spacer()

            NavigationLink(destination: SignUpView()) {
                Text("Don't have an account? Sign Up")
                    .foregroundColor(.blue)
                    .padding(.bottom, 20)
            }
        }
        .padding()
    }
    func login() {
        Auth.auth().signIn(withEmail: username, password: password) {
            result, error in if error != nil {
                print(error!.localizedDescription)
            }
        }
     }


    }


struct SignInWithGoogleButton: View {
    
    let webURL = URL(string: "https://accounts.google.com/InteractiveLogin/signinchooser?hl=en-gb&ifkv=ASKXGp0A_-YnzV5RdpRRK4tkacnX-lvN9IjFH79XnHnCof_7RRexLHvOSAQpoJHf9WrCUSgx5kAK&theme=glif&flowName=GlifWebSignIn&flowEntry=ServiceLogin")!
    
    func openBrowser() {
           UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
       }
    
    var body: some View {
        Button(action: {
            openBrowser()
            print("Sign In with Google tapped!")
        }) {
            HStack {
                Image("google_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 25)
                    .background(.white)
                    .cornerRadius(10)
                    
                Text("Sign In with Google")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue) // Customize the background color
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.vertical, 10)
            .padding(.horizontal, 20)

        }
    }
}

struct SignInWithFacebookButton: View {
    var body: some View {
        Button(action: {
            // Implement Facebook Sign-In logic
            print("Sign In with Facebook tapped!")
        }) {
            HStack {
                Image("facebook_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 25)
                    .background(.white)
                    .cornerRadius(10)
                Text("Sign In with Facebook")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.red)) // Customize the background color
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
        }
    }
}

struct SignInWithLinkedInButton: View {
    var body: some View {
        Button(action: {
            // Implement LinkedIn Sign-In logic
            print("Sign In with LinkedIn tapped!")
        }) {
            HStack {
                Image("linkedin_icon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 25)
                    .cornerRadius(10)
                Text("Sign In with LinkedIn")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(hex: 0x3498db )) // Customize the background color
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
        }
        

    }
}



#Preview {
    SignInView()
}
