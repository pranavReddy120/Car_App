import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Wallpaper")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Text("Car Info")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    
                    NavigationLink( destination: CarView()) {
                        Text("Get Started")
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
    }
}
