//
//  File.swift
//  
//
//  Created by Farhandika on 16/04/22.
//

import SwiftUI
import PencilKit

struct CanvasView: UIViewRepresentable {
    @Binding var canvas:PKCanvasView
    let picker = PKToolPicker.init()
    func makeUIView(context: Context) -> PKCanvasView {
        canvas.drawingPolicy = .anyInput
        canvas.backgroundColor = .white
        canvas.tool = PKInkingTool(.pencil, color: .darkText, width: 15)
        canvas.becomeFirstResponder()
        return canvas
    }
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        picker.addObserver(canvas)
        picker.setVisible(true, forFirstResponder: uiView)
        DispatchQueue.main.async {
            uiView.becomeFirstResponder()
        }
    }
}

