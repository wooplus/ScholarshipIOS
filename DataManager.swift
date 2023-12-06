////
////  DataManager.swift
////  ScholarshipFinal
////
////  Created by Lin Htet Aung on 11/26/23.
////
//
//import Foundation
//import Firebase
//
//class DataManager: ObservableObject {
//    @Published var scholarships: [Scholarships] = []
//    
//    init() {
//        fetchScholarships()
//    }
//    
//    func fetchScholarships() {
//        scholarships.removeAll()
//        let db = Firestore.firestore()
//        let ref = db.collection("Scholarships")
//        
//        ref.getDocuments {snapshot, error in
//            guard error == nil else {
//                print(error!.localizedDescription)
//                return
//            }
//            
//            if let snapshot = snapshot {
//                for document in snapshot.documents {
//                    let data = document.data()
//                    let id = data["id"] as? String ?? ""
//                    let name = data["name"] as? String ?? ""
//                    let award = data["award"] as? String ?? ""
//                    let GPA = data["GPA"] as? String ?? ""
//                    
//                    let scholarship = Scholarships(id: id, name: name, award: award, GPA: GPA)
//                    self.scholarships.append(scholarship)
//                }
//            }
//        }
//    }
//    
//    func addScholarship(name : String ) {
//        let db = Firestore.firestore()
//        let ref = db.collection("Scholarships").document(name)
//        ref.setData(["name" : name, "id" : 10]) { error in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//        }
//    }
//    
//    
//}
