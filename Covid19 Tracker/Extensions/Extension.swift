//
//  Extension.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import Foundation


extension Int{
    
    func formatNumber()-> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self) )!
    }
    
}
    extension Int64{
        
        func formatNumber()-> String {
            let formatter = NumberFormatter()
            formatter.groupingSeparator = ","
            formatter.numberStyle = .decimal
            return formatter.string(from: NSNumber(value: self) )!
        }
    
    }

