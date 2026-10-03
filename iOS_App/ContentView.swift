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
    
    func guardExample(num: Bool) {
        
        guard (num) else {
            print("Bad")
            return
        }
        print("Good")
    }
    
    var body: some View {
        VStack {
            
            List {
                Text("wash the car")
                Text("go from home")
                Text("pick your order")
            }
            
            var num = Set([1,3,4,2,7,3,8,3])
            var num2 = Set([1,3,4,2,7,3,8,3])
            
            Button("Guard") {
                guardExample(num: true)
            }
        }
    }
}



