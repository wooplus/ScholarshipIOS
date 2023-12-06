//
//  TestingForScholarshipView.swift
//  ScholarshipFinal
//
//  Created by Lin Htet Aung on 11/26/23.
//

import SwiftUI

struct TestingForScholarshipView: View {
    
    @EnvironmentObject var dataManager : DataManager
    
    var body: some View {
        NavigationView {
            List(dataManager.scholarships, id: \.id) {
                scholarships in Text(scholarships.name)
            }
        }
    }
}

#Preview {
    TestingForScholarshipView()
}
