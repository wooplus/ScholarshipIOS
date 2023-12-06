//
//  ScholarshipTestingView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/28/23.
//

import SwiftUI

struct HomeView: View {
    let numbers = [1, 2, 3, 4, 5]
    
    let webURL = URL(string: "https://www.wgu.edu/lp/business/lead/master-your-future-mba.html?refer_id=2004355&ch=PDSRCH&gad_source=1&gclid=CjwKCAiAvJarBhA1EiwAGgZl0M-OijQcP94uysDiNa3mJhof8j23k_qTdfkVf3_iAxMEEcxMZJc4EBoCT1wQAvD_BwE")!
    
    func openBrowser() {
           UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
       }

    var body: some View {
           ScholarshipComponentView()
        
            }
    }


#Preview {
    ContentView()
}
