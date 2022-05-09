import SwiftUI

struct MegaMendungView: View {
    @State var pageIndex: Int = 0
    let maxContent: Int = 2
    var body: some View  {
        BatikInfoComponent(type: .megaMendung, maxContent: 2) {
            InfoComponent {
                HStack{
                    Text("About")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("megaExample", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("Batik Mega Mendung is a batik that draws it inspiration from the shape of clouds in the sky. This batik is originated from a region in Indonesia called Cirebon")
            }.tag(0)
            InfoComponent {
                HStack{
                    Text("History")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("relic1", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("Many people believes that Batik Mega Mendung heavely affected by the chinese who came to Indonesia back in the age of kingdoms. This was backed by the fact that Sunan Gunungjati (one of cirebon most respected man) married a visitor who came to Cirebon and many China Ancient relics have clouds shapes in it.")
            }.tag(1)
            
            InfoComponent {
                HStack{
                    Text("What We will Draw")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("megamendung", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("We will try to draw Mega mendung batik, you can try to create it by your own or try to duplicate the picture above. Remember! Mega mendung is a batik that shapes like a cloud")
            }.tag(2)
        }
        .foregroundColor(.black)
    }
}
