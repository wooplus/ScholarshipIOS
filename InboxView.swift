//
//  InboxView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/30/23.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        VStack {
            
            Text("All Messages")
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
            Divider()
            ScrollView {
                NotificationComponent(notiTitle: "Foundation Scholarship", notiDetail: "You are pre-approved", btnText: "Submit Appointment")
                Divider()
                NotificationComponent(notiTitle: "Kent Scholarship", notiDetail: "You are approved for $50000. The next step is filling bank information", btnText: "View")
                Divider()
                NotificationComponent(notiTitle: "WGU University", notiDetail: "You could be approved these scholarships", btnText: "View")
                Divider()
            }
    
        }
        
    }
}

#Preview {
    InboxView()
}


struct NotificationComponent: View {
    
    var notiTitle: String
    var notiDetail : String
    var btnText : String

    
    var body: some View {
        HStack {
            Image(systemName: "bell")
                .font(.system(size: 50))
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.indigo)
                .scaledToFit()
            Spacer()
            VStack{
                Text("\(notiTitle)")
                    .bold()
                    .font(.headline)
                    .padding()
                Text("\(notiDetail)")

                NavigationLink(destination: AppointmentScheduleView()) {
                    Text("\(btnText)")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 240, height: 24)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.bottom, 20)
                }
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
        .background(Color.white)
    }
}
