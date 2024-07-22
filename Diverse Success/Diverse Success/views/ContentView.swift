import SwiftUI


// this is for helping us view what we are doing
struct ContentView: View {
    var body: some View {
        
      // Text("hi")
        
    NavigationView{ContentView()}
           .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
    
}

        

struct ContentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}

