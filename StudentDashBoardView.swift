//
//  SwiftUIView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/25/23.
//

import SwiftUI

struct StudentDashBoardView: View {
    
    let numbers = [1, 2, 3, 4, 5]
    
//    @EnvironmentObject var dataManager : DataManager

    var body: some View {
        
        TabView {
            ZStack {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            ZStack {
                InboxView()
            }
            .tabItem {
                Image(systemName: "bell")
                Text("Inbox")
            }
            
    
            ZStack {
                Text("Profile")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .tabItem {
                Image(systemName: "bookmark")
                Text("Saved Scholarships")
            }
            
            ZStack {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "square.and.pencil")
                Text("Profile")
            }
            
            ZStack {
                Text("Settings")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }


            
        }
    }
}

#Preview {
    StudentDashBoardView()
}


