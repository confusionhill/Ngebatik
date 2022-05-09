import SwiftUI

struct InfoComponent<Content: View>: View {
    let content: () -> Content
    public init (@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) { 
                self.content()
            }
        }.padding()
    }
}

