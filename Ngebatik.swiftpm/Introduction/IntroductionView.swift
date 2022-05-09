
import SwiftUI

struct IntroView: View {
    let maxContent: Int = 2
    var body: some View  {
        BatikInfoComponent(type: .plain, maxContent: 3) { 
            InfoComponent { 
                HStack{
                    Text("What is Batik")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("mainBatik", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("Batik is an artwork made by Indonesian which blend art and technology by the Ancestors. It draws inpiration from the nature of Indonesia, from clouds to animal. Batik can be made on many surfases not limited to clothing.")
            }
            .foregroundColor(.black)
            .tag(0)
            
            InfoComponent {
                HStack {
                    Text("History")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("personNgebatik", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 250, alignment: .center)
                Text("Many people believes that batik has been established since the age of Majapahit, it became popular from XIV century up to today. The word batik originates froma javanese words \"amba\" meaning writting and \"titik\" pointing to batik's unique pattern ")
            }.tag(1)
                .foregroundColor(.black)
            
            InfoComponent{
                HStack {
                    VStack {
                        Text("What we will try")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                    }
                    Spacer()
                }
                .padding(.bottom,5)
                Text("There are plenty types of batik accross Indonesia. Each type have their very own complexity. So today, we will show you 3 type of batik that we think is the easiest yet beautifull of them all")
                HomeCell(contxt: "Batik Mega Mendung")
                HomeCell(contxt: "Batik Simbut")
                HomeCell(contxt: "Batik Kawung")
                Text("You will try to draw all of them and you will get helped by Apple MLKit to determine whether or not your drawing is correct")
            }.tag(2)
                .foregroundColor(.black)
            
            InfoComponent { 
                HStack {
                    Text("How to Play")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Text("Playing the game is quite easy. all you have to do is draw a  batik depending on what type of batik you have selected.")
                Image("showExample", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                Text("To help you guide on what to draw, click on the show example button. To remove the popup, click on disable on the top right corner")
            }
            .foregroundColor(.black)
            .tag(3)
        }
    }
}

