//
//  File.swift
//  
//
//  Created by Farhandika on 17/04/22.
//

import SwiftUI

/*
 base
 UIColor(red: 0.92, green: 0.85, blue: 0.76, alpha: 1.00)
 
 secondary
 UIColor(red: 1.00, green: 0.96, blue: 0.92, alpha: 1.00)
 
 alternate
 UIColor(red: 1.00, green: 0.93, blue: 0.93, alpha: 1.00)
 */

extension Color {
    static let baseCol:Color = Color(uiColor: UIColor(red: 0.92, green: 0.85, blue: 0.76, alpha: 1.00))
    static let secondaryCol = Color(uiColor: UIColor(red: 1.00, green: 0.96, blue: 0.92, alpha: 1.00) )
    static let darkCol = Color(red: 0.9, green: 0.73, blue: 0.58)
    static let alterCol = Color(uiColor:  UIColor(red: 1.00, green: 0.93, blue: 0.93, alpha: 1.00))
}
