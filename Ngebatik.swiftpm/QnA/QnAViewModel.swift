//
//  File.swift
//  
//
//  Created by Farhandika on 16/04/22.
// Music

import Foundation

class QnAViewModel:ObservableObject {
    
    @Published var isEnd:Bool = false
    let qnas:[qna] = [
        qna(Q: "Where do Batik came from ?", ans: 1, type: .normal,
            answers: [
                "India",
                "Indonesia",
                "Japan",
            ]),
        qna(Q: "What is batik ?", ans: 2, type: .normal,
            answers: [
                "Indonesia's Traditional Clothing",
                "Indonesia's Capital City",
                "Indonesia's Traditional form of Art",
            ]),
        qna(Q: "Where do batik draws it inspiration from ?", ans: 0, type: .normal,
            answers: [
                "Nature",
                "Animals",
                "Human",
            ]),
    ]
    
    @Published var page:Int = 0
    
    func tryToMatch(selection:Int) -> Bool {
        return qnas[page].ans == selection
    }
    
    func getCurrContent() -> qna {
        return self.qnas[page]
    }
}
