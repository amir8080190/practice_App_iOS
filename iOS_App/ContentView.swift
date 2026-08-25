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

enum fileTransferError: Error {
    case fileNotFound
    case connectionFailed
}



struct listView: View {
    
    var body: some View {
        VStack {
            Text("hello")
        }
    }
}
