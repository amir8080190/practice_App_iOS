import SwiftUI

struct ContentView: View {
    @State var goNext: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Hellow, Wellcome to SwiftUI")
                    .font(.largeTitle)
                Button("Go Next") {
                    goNext = true
                }   
                .padding()
                .foregroundStyle(Color.white)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.blue)
                )
                .navigationDestination(isPresented: $goNext){
                    listView()
                }
            }
        }
    }
}

struct listView: View {
    
    var body: some View {
        VStack {
            
            List {
                Text("wash the car")
                Text("go from home")
                Text("pick your order")
            }
        }
    }
}

