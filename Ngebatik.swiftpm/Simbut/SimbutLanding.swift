import SwiftUI

struct SimbutView: View {
    var body: some View {
        BatikInfoComponent(type: .simbut, maxContent: 2) { 
            InfoComponent {
                HStack{
                    Text("About")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("simbutExample", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("Batik Simbut is a type of batik that originated from the inland badui tribe in Banten which still uphold the ancestral teachings. This type of batik draws inpiration from taro leaves that grew near Badui Villages. The meaning behind this batik is \" A King need to be carefull, wise, and have a self control\".")
            }.tag(0)
            InfoComponent {
                HStack{
                    Text("History")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("keraton", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("The name simbut is self is made by the netherlands back in the 17th century. It originated from the word \"selimut batik\" which translates to batik blanked. This batik is newly re-discovered as it lost during the downfall of kesultanan Banten up until 1976 where archaeologist escavate the site.")
            }.tag(1)
            
            InfoComponent {
                HStack{
                    Text("What We will Draw")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("simbut", bundle: nil)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("We will try to draw Simbut batik, you can try to create it by your own or try to duplicate the picture above. Remember! Simbut is a batik that shape like a leaves")
            }.tag(2)
        }
        .foregroundColor(.black)
    }
}

