//
//  AuthenticationViewController.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/26/23.
//

import SwiftUI
import Firebase
import GoogleSignIn

extension AuthenticationViewController {
    func getRootViewController() -> UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .init()
        }

        guard let root = screen.windows.first?.rootViewController else {
            return .init()
        }
        

        return root
    }
}

struct AuthenticationViewController: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AuthenticationViewController()
}

//func signIn() {
//    guard let clientID = FirebaseApp.app()?.options.clientID else { return }
//            
//    let config = GIDConfiguration(clientID: clientID)
//
//    GIDSignIn.sharedInstance.configuration = config
//            
//    GIDSignIn.sharedInstance.signIn(withPresenting: view.getRootViewController()) { signResult, error in
//                
//        if let error = error {
////           ...
//           return
//        }
//                
//         guard let user = signResult?.user,
//               let idToken = user.idToken else { return }
//         
//         let accessToken = user.accessToken
//                
//         let credential = GoogleAuthProvider.credential(withIDToken: idToken.tokenString, accessToken: accessToken.tokenString)
//
//        // Use the credential to authenticate with Firebase
//
//    }
//
//}
