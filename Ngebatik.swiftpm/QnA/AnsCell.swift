//
//  File.swift
//  
//
//  Created by Farhandika on 16/04/22.
//

import SwiftUI

public struct AnsCell: View {
    let contxt:String
    public var body: some View {
        Text(contxt)
            .fixedSize(horizontal: false, vertical: true) 
            .foregroundColor(.blue)
            .multilineTextAlignment(.center)
            .padding()
            .frame(minWidth: 500, idealWidth: 500, maxWidth: 500, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .opacity(0.5)
                    .shadow(radius: 3)
            )
    }
}
