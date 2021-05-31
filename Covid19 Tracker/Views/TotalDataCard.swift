//
//  TotalDataCard.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Error"
    var name: String = "Confirmed"
    var color1: String = "gRed1"
    var color2: String = "gRed2"
    
    
    var body: some View {
        
        GeometryReader{ geometry in
            
            VStack{
                
                Text(self.number).font(.subheadline).padding(5).foregroundColor(.white)
                
                Text(self.name).font(.body ).padding(5).foregroundColor(.white)
                
            }//end of vstack
            .frame(width: geometry.size.width, height: 80, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(20.0)
        
            
        }
    
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
