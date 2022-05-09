import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LandingView()
                .navigationBarHidden(true)
        }
        .navigationViewStyle(.stack)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
    }
}

