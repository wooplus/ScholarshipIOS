//
//  ContentView.swift
//  DatePicker
//
//  Created by Lin Htet Aung on 11/1/23.
//

import SwiftUI

struct AppointmentScheduleView: View {
    @State var selectedDate : Date = Date()
    let startingDate: Date = Date()
    let endingDate : Date = Calendar.current.date(from:DateComponents(year:2025)) ?? Date()
    var body: some View {
        DatePicker("Select a Date", selection: $selectedDate, in:startingDate...endingDate)
            .accentColor(Color.red)
            .datePickerStyle(
//                CompactDatePickerStyle()
                GraphicalDatePickerStyle()
//                WheelPickerStyle()
            )
        
        Button(action: {
            // Add your sign-in logic here
            print("Sign In tapped!")
        }) {
            Text("Submit Appointment")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.green)
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .padding(.top, 20)
        }

    }
}

#Preview {
    AppointmentScheduleView()
}
