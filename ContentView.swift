//
//  ContentView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/25/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    let webURL = URL(string: "http://localhost:3000/")!
    
    func openBrowser() {
           UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
       }

    var body: some View {
        NavigationView {
            VStack {
                Image("ScholarshipsLogo") // Replace "your_logo" with the name of your logo image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 900, height: 300)
                    .padding(.top, 50)

                Text("Welcome to Scholarships Community")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)

                Text("Explore Ways to Make Your Degree Affordable")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)

                Spacer()

                NavigationLink(destination: SignInView()) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.bottom, 50)
                }
                
                         
                Button("Are you a Scholarship Organization User?") {
                               openBrowser()
                           }
                           .foregroundColor(.blue)
                           .padding()
                
                Text("© 2023 Made with 🌟 by Software Solution. All rights reserved.")
                               .font(.footnote)
                               .foregroundColor(.gray)
                               .padding(.bottom, 20)
                               .multilineTextAlignment(.center)
            }
            .padding()
            .navigationBarHidden(true) // Hide the navigation bar
        }

    }
}

#Preview {
    ContentView()
}
