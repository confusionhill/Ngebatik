import SwiftUI

//
//  SwiftUIView.swift
//  
//
//  Created by Farhandika on 21/04/22.
//

public struct HomeCell: View {
    let contxt:String
    public var body: some View {
        Text(contxt)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .padding()
            .frame(minWidth: 500, idealWidth: 500, maxWidth: 500, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(radius: 3)
            )
    }
}


public struct LockCell: View {
    public var body: some View {
        Image(systemName: "lock.fill")
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
            .frame(minWidth: 500, idealWidth: 500, maxWidth: 500, minHeight: 50, idealHeight: 50, maxHeight: 50, alignment: .center)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                    .shadow(radius: 3)
            )
    }
}
