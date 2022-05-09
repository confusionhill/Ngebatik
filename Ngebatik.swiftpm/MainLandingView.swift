import SwiftUI
//
//Image("batikBG")
////.opacity(0.04)


struct LandingView: View {
    var gameState: GameState = GameState()
    @State private var selection: Int? = nil
    
    var body: some View {
        HStack {
            VStack {
                NavigationLink(destination: IntroView()
                               , tag: 1, selection: $selection) { EmptyView() }
                NavigationLink(destination:  MegaMendungView()
                               , tag: 2, selection: $selection) { EmptyView() }
                NavigationLink(destination:  QnAView()
                                .navigationBarHidden(true)
                               , tag: 3, selection: $selection) { EmptyView() }
                NavigationLink(destination:  SimbutView()
                               , tag: 4, selection: $selection) { EmptyView() }
                NavigationLink(destination:  KawungLanding()
                               , tag: 5, selection: $selection) { EmptyView() }
                Button {
                    selection = 1
                } label: {
                    HomeCell(contxt: "Introduction to Batik")
                }
                Button {
                    selection = 2
                } label: {
                    if gameState.isMegaAvail {
                        HomeCell(contxt: "Batik Mega Mendung")
                    } else {
                        LockCell()
                            .transition(.slide)
                    }
                }
                .disabled(!gameState.isMegaAvail)
                
                Button {
                    selection = 4
                } label: {
                    if gameState.isSimbutAvail {
                        HomeCell(contxt: "Batik Simbut")
                    } else {
                        LockCell()
                            .transition(.slide)
                    }
                }
                .disabled(!gameState.isSimbutAvail)
                
                Button {
                    selection = 5
                } label: {
                    if gameState.isKawungAvail {
                        HomeCell(contxt: "Batik Kawung")
                            .transition(.slide)
                    } else {
                        LockCell()
                            .transition(.slide)
                    }
                }
                .disabled(!gameState.isKawungAvail)
                
                Button {
                    selection = 3
                } label: {
                    if gameState.isBonusAvail {
                        HomeCell(contxt: "Bonus")
                    } else {
                        LockCell()
                            .transition(.slide)
                    }
                } 
                .disabled(!gameState.isBonusAvail)
                
            }.padding(.leading)
            Spacer()
            Image("avatarFemale", bundle: nil)
                .resizable()
                .scaledToFit()
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .background(
            Image("batikBG")
                .resizable()
                .scaledToFill()
                .opacity(0.09)
                .background(
                    Color.baseCol
                )
        )
        .onAppear { 
            MusicPlayer.shared.playInitialSound()
        }
    }
}


