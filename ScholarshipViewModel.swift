import Foundation

class ScholarshipViewModel: ObservableObject {
    @Published var scholarships = [Scholarships]()

    init() {
        fetchData()
    }

    func fetchData() {
        guard let url = URL(string: "http://localhost:5500/scholarships") else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("Error: \(error)")
                return
            }

            if let data = data {
                do {
                    let scholarships = try JSONDecoder().decode([Scholarships].self, from: data)
                    print(scholarships)
                    DispatchQueue.main.async {
                        self.scholarships = scholarships
                    }
                } catch {
                    print("Error decoding JSON: \(error)")
                }
            }
        }.resume()
    }
}
