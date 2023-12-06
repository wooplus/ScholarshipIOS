//
//  EducationBackgroundView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/25/23.
//

import SwiftUI

struct EducationBackgroundView: View {
    var firstName: String
    var lastName: String
    var email: String

    @State private var additionalInfo = ""

    var body: some View {
        Form {
            Section(header: Text("Educational Information")) {
                TextField("Enter College Type", text: $additionalInfo)
                TextField("Types of Degree", text: $additionalInfo)
                

            
                TextField("Enter GPA", text: $additionalInfo)
                
                Text("Select an option:")
                                .font(.headline)
                                .padding(.bottom, 8)
            }

            Section {
                Button(action: {
                    // Perform form submission logic here
                    print("Form submitted!")
                }) {
                    Text("Submit")
                }
            }
        }
        .navigationBarTitle("Educational Information")
    }
}

#Preview {
    EducationBackgroundView(firstName: "String", lastName: "String", email: "String")
}
