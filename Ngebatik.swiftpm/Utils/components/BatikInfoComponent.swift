import SwiftUI

struct BatikInfoComponent<Content: View>: View {
    let type: batikType
    @State var pageIndex: Int = 0
    @State private var selection: Int? = nil
    let maxContent: Int
    let pagerContent: () -> Content
    
    public init(
        type: batikType,
        maxContent: Int,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.type = type
        self.maxContent = maxContent
        self.pagerContent = content
        
    }
    var body: some View {
        VStack{
            NavigationLink(destination: NgebatikView(batikType: self.type)
                           , tag: 1, selection: $selection) { EmptyView() }
            LazyVStack {
                TabView(selection: $pageIndex) {
                   pagerContent()
                }
                .frame(width: UIScreen.main.bounds.width-120, height: 480, alignment: .top)
                .tabViewStyle(.page)
            }
            .frame(width: UIScreen.main.bounds.width-100, height: 500, alignment: .top)
            .background(Color.white.opacity(0.2))
            .cornerRadius(10)
            
            HStack{
                Button {
                    if pageIndex >= 1{
                        pageIndex -= 1
                        MusicPlayer.shared.playSound(soundType: .next)
                    }
                    
                } label: {
                    SmallButton(txt: "Prev")
                        .opacity(pageIndex < 1 ? 0 : 1)
                        .animation(.easeIn, value: 1)
                }
                Spacer(minLength: 30)
                Button {
                    if pageIndex != maxContent {
                        MusicPlayer.shared.playSound(soundType: .next)
                        pageIndex += 1
                    } else {
                        MusicPlayer.shared.stopInitialSound()
                        if type == .plain {
                            GameState.shared.isMegaAvail = true
                            NavigationUtil.popToRootView()
                        } else {
                            selection = 1
                        }
                    }
                } label: {
                    SmallButton(
                        txt: pageIndex != maxContent ? "Next" : type == .plain ? "Continue" : "Try It!"
                    )
                }
            }
            .padding(.horizontal,55)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .background(Color.baseCol)
    }
}

