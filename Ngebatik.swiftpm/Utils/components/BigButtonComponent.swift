import SwiftUI

struct BigButtonView: View {
    let txt: String
    init(txt: String) {
        self.txt = txt
    }
    var body: some View {
        Text(txt)
    }
} 
