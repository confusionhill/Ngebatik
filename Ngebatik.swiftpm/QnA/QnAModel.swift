//
//  File.swift
//  
//
//  Created by Farhandika on 16/04/22.
//

import Foundation

public enum Qtype {
    case normal,tf
}

public struct qna {
    public let question:String
    public let ans:Int
    public let type:Qtype
    public let answers:[String]
    
    public init(Q:String,ans:Int,type:Qtype,answers:[String]) {
        self.question = Q
        self.ans = ans
        self.type = type
        self.answers = answers
    }
    public func checkAns(idx:Int) -> Bool {
        return  self.ans == idx
    }
}
