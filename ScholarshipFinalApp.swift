//
//  ScholarshipFinalApp.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/25/23.
//

import SwiftUI
import Firebase


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct ScholarshipFinalApp: App {
//    @StateObject var dataManager = DataManager()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
//    init() {
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        WindowGroup {
//            StudentDashBoardView().environmentObject(dataManager)
            ContentView()
        }
    }
}
