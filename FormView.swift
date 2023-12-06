//
//  SignUpView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/25/23.
//

import SwiftUI

struct FormView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var username = ""
    @State private var password = ""
    @State private var dateOfBirth = ""
    @State private var selectedGender = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var selectedMaritalStatus = ""
    @State var selectedDate : Date = Date()
    @State private var additionalInfo = ""
    let startingDate: Date = Calendar.current.date(from:DateComponents(year:1920)) ?? Date()
    let endingDate : Date = Calendar.current.date(from:DateComponents(year:2006)) ?? Date()


    let martitalStatus = ["Single", "Married", "Divorced", "Widow"]
    let gender = ["Male", "Female", "Rather Not Say"]


       var body: some View {
           NavigationView {
               Form {
                   Section(header: Text("Personal Information")) {
                       TextField("First Name", text: $firstName)
                       TextField("Last Name", text: $lastName)
                   }
                   
                   Section(header: Text("Basic Information")) {
                       DatePicker("Select a Date", selection: $selectedDate, in:startingDate...endingDate, displayedComponents: .date)
                           .accentColor(Color.red)
                    
                       Picker("Select Gender", selection: $selectedGender) {
                           ForEach(gender, id: \.self) {
                               Text($0)
                           }
                       }
                       
                       Picker("Select Marital Status", selection: $selectedMaritalStatus) {
                           ForEach(martitalStatus, id: \.self) {
                               Text($0)
                           }
                       }

                   }
                   
                   Section(header: Text("Scholarship Credentials")) {
                       TextField("Username", text: $username)
                       SecureField("Password", text: $password)
                   }


                   Section(header: Text("Contact Information")) {
                       TextField("Email", text: $email)
                       TextField("Phone Number",text:  $phoneNumber)
                   }

//                   Section {
//                       NavigationLink(destination: EducationBackgroundView(firstName: firstName, lastName: lastName, email: email)) {
//                           Text("Next")
//                       }
//                   }
                   
                   
                   Section(header: Text("Educational Information")) {
                       TextField("Enter College Type", text: $additionalInfo)
                       TextField("Types of Degree", text: $additionalInfo)
                       

                   
                       TextField("Enter GPA", text: $additionalInfo)
                       
                       Text("Select an option:")
                                       .font(.headline)
                                       .padding(.bottom, 8)
                   }

                   Section {
//                       Button(action: {
//                           // Perform form submission logic here
//                           print("Form submitted!")
//                       }) {
//                           Text("Submit")
//                       }
                       NavigationLink(destination: StudentDashBoardView()) {
                           Text("Submit")
                               .foregroundColor(.blue)
                       }
                   }
               }
               .navigationBarBackButtonHidden(true)
               .navigationBarItems(leading: EmptyView())
               .navigationBarTitle("", displayMode: .inline)

           }
       }
}



#Preview {
    FormView()
}
