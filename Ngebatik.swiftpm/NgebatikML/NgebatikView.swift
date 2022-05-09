import SwiftUI


struct NgebatikView: View {
        @ObservedObject var viewModel:ClassificationHandler
        public init(batikType:batikType){
            self.viewModel = ClassificationHandler(type: batikType)
        } 
    
    
    private func getHLoc() -> CGFloat {
        if viewModel.isShowing {
            return  -UIScreen.main.bounds.height/3.5
        }
        return UIScreen.main.bounds.height
    }
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.darkCol)
            VStack {
                TabBarNgebatik(viewModel: viewModel)
                    .padding(.top,20)
                CanvasView(canvas: $viewModel.canvas) 
            }
            HStack(){
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300, alignment: .center)
                    .foregroundColor(.alterCol)
                    .overlay { 
                        VStack {
                            Image(viewModel.typeBatik.rawValue, bundle: nil)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 280, height: 280, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        .padding()
                        
                    }
                
            }
            .padding()
            .offset(y: self.getHLoc())
            .animation(.spring(), value: 5)
            
            FlexibleSheet(sheetMode: $viewModel.sheetMode ) { 
                CongratulationView()          
            }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .navigationBarHidden(true)
    }
}

