import SwiftUI

struct ScholarshipComponentView: View {
    @ObservedObject var viewModel = ScholarshipViewModel()
    
    let webURL = URL(string: "https://www.wgu.edu/lp/business/lead/master-your-future-mba.html?refer_id=2004355&ch=PDSRCH&gad_source=1&gclid=CjwKCAiAvJarBhA1EiwAGgZl0M-OijQcP94uysDiNa3mJhof8j23k_qTdfkVf3_iAxMEEcxMZJc4EBoCT1wQAvD_BwE")!
    
    func openBrowser() {
           UIApplication.shared.open(webURL, options: [:], completionHandler: nil)
       }


    var body: some View {
        
        VStack {
            Text("Scholarships based on your profile")
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
            
            Text("10 results")
                .foregroundColor(.secondary)
            
            NavigationView {
                List(viewModel.scholarships, id: \.scholarship_id) { scholarship in
    //                VStack(alignment: .leading) {
    //                    Text(scholarship.scholarship_name)
    //                        .font(.headline)
    //                    Text("Amount: \(scholarship.scholarship_amount)")
    //                    Text("Students Awarding: \(scholarship.scholarship_quantity)")
    //                    Text("Scholarship Years: \(scholarship.scholarship_years)")
    //                }
                   
                    
                    VStack( spacing: 8) {
                            Image(systemName: "star.fill")
                            .resizable()
                            .foregroundColor(.orange)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text(scholarship.scholarship_name)
                            .font(.title)
                                .bold()
                                .foregroundColor(.black)
                        
                        Text(scholarship.scholarship_amount)
                            .font(.body)
                            .foregroundColor(.secondary)
                     
                        Text("3.0 GPA Required")
                            .font(.body)
                            .foregroundColor(.secondary)
                        
                        HStack{
                            Button(action: {
                                // Add your sign-in logic here
                                print("Sign In tapped!")
                            }) {
                                Text("Apply")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 20)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 30)
                            }
                            Button(action: {
                                // Add your sign-in logic here
                                print("Sign In tapped!")
                            }) {
                                Text("Save")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 20)
                                    .background(Color.green)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 30)
                            }
                            
                        }
                        
                        Button("Visit our web page to learn more!") {
                                       openBrowser()
                                   }
                                   .foregroundColor(.blue)
                                   .padding()
                        
                        }
    //                        .frame(maxWidth: .infinity)  Make the VStack take up the full width
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .multilineTextAlignment(.center)
                    
                    
                }
        }
        
        
      
        
        }
    }
}

struct ScholarshipComponentView_Previews: PreviewProvider {
    static var previews: some View {
        ScholarshipComponentView()
    }
}
