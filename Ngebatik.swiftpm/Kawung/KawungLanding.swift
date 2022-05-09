import SwiftUI

struct KawungLanding: View {
    @State var pageIndex: Int = 0
    let maxContent: Int = 2
    var body: some View  {
        BatikInfoComponent(type: .kawung, maxContent: 2) {
            InfoComponent {
                HStack{
                    Text("About")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("kawungExample", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("Batik Kawung is a type of batik that originated from Yogyakarta, a very dear region in Indonesia. This type of batik is one of the oldest in the javanese island. It shape reseble kawung fruit slices.")
            }.tag(0)
            InfoComponent {
                HStack{
                    Text("History")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("royal", bundle: nil)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("Originaly, this batik is only available for the aristocracy of Yogyakarta. But today, you can also enjoy this batik without having any blue blood. The batik is self symbolize life, origin of the user, and justice.")
            }.tag(1)
            
            InfoComponent {
                HStack{
                    Text("What We will Draw")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    Spacer()
                }
                Image("kawung", bundle: nil)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 200, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text("We will try to draw Kawung, you can try to create it by your own or try to duplicate the picture above. Remember! Kawung is a batik that shapes like a slice of kawung fruit")
            }.tag(2)
        }.foregroundColor(.black)
    }
}
