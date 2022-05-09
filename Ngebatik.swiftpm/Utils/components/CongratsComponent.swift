import SwiftUI

struct CongratulationView: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 400, height: 400, alignment: .top)
                    .foregroundColor(.baseCol)
                    .overlay { 
                        VStack(alignment: .leading) { 
                            Group {
                                Text("Congratulation!")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                    .padding(.bottom,5)
                                Text("Click on the Continue Button to continue your journey")
                            }
                            .foregroundColor(.black)
                            Spacer()
                            Button { 
                                NavigationUtil.popToRootView()
                            } label: { 
                                SmallButton(txt: "Continue")
                            }
                            
                        }
                        .padding(25)
                    }
                    .padding()
                Spacer()
                Image("avatarMale", bundle: nil)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/2, alignment: .center)
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
    }
}

