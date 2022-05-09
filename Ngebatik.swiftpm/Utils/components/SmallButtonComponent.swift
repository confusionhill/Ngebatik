//
//  File.swift
//  
//
//  Created by Farhandika on 17/04/22.
//

import SwiftUI

struct SmallButton: View {
    let txt:String
    public init (txt: String) {
        self.txt = txt
    }
    var body: some View {
        Text(txt)
            .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
            .background(Color.white.opacity(0.3))
            .cornerRadius(6)
    }
}

