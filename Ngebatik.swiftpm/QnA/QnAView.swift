//
//  File.swift
//  
//
//  Created by Farhandika on 16/04/22.
//


import SwiftUI

public struct QnAView: View {
    public init() {
    }
    @ObservedObject var viewModel:QnAViewModel = QnAViewModel()
    @State private var sheetMode: SheetMode = .none
    
    public var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.secondaryCol)
            VStack {
                Text(viewModel.getCurrContent().question)
                    .foregroundColor(.black)
                    .font(.title2)
                    .bold()
                    .padding()
                ForEach (0 ..< viewModel.getCurrContent().answers.count) { idx in
                    Button(action: {
                        if viewModel.tryToMatch(selection: idx) {
                            MusicPlayer.shared.playSound(soundType: .correct)
                            if viewModel.page < 2 {
                                viewModel.page += 1
                            } else {
                                viewModel.isEnd.toggle()
                                MusicPlayer.shared.playSound(soundType: .end)
                                sheetMode = .half
                            }
                        } else {
                            MusicPlayer.shared.playSound(soundType: .wrong)
                        }
                    }) {
                        AnsCell(contxt: viewModel.getCurrContent().answers[idx])
                    }
                }
            }
            .padding()
            
            FlexibleSheet(sheetMode: $sheetMode) {
                CongratulationView()
            }
        }
    }
}

