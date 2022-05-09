import SwiftUI
import PencilKit

struct TabBarNgebatik: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @ObservedObject var viewModel:ClassificationHandler
    var body: some View {
        HStack {
            Button { 
                self.mode.wrappedValue.dismiss()
            } label: { 
                SmallButton(txt: "Cancel")
            }
            
            Button { 
                MusicPlayer.shared.playSound(soundType: .alternate)
                viewModel.canvas.drawing = PKDrawing()
            } label: { 
                SmallButton(txt: "Reset")
            }
            Button { 
                if viewModel.isItTrue() {
                    MusicPlayer.shared.playSound(soundType: .end)
                    viewModel.sheetMode = .half
                } else {
                    MusicPlayer.shared.playSound(soundType: .wrong)
                }
            } label: { 
                SmallButton(txt: "Submit")
            }
            Spacer ()
            
            Button { 
                viewModel.isShowing.toggle()
                MusicPlayer.shared.playSound(soundType: .alternate)
            } label: { 
                SmallButton(txt: 
                                viewModel.isShowing ? "Disable" : "Show Example"
                )
            }
            
        }
        .padding()
        .padding(.horizontal,25)
    }
}

