import SwiftUI

struct SideMenuView: View {
    @State private var isMenuVisible: Bool = false

    var body: some View {
        NavigationView {
            // Side Menu
            List {
                NavigationLink(destination: Text("Home")) {
                    Label("Home", systemImage: "house")
                }
                
                NavigationLink(destination: Text("Profile")) {
                    Label("Profile", systemImage: "person")
                }
                
                NavigationLink(destination: Text("Settings")) {
                    Label("Settings", systemImage: "gear")
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Main Content")
            
            // Main Content
            Text("Select an item from the side menu")
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
