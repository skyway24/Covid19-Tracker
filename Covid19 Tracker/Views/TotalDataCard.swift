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
    var color: Color = .primary
    
    
    var body: some View {
        
        GeometryReader{ geometry in
            
            VStack{
                
                Text(self.number).font(.subheadline).padding(5).foregroundColor(.white)
                
                Text(self.name).font(.body ).padding(5).foregroundColor(.white)
                
            }//end of vstack
            .frame(width: geometry.size.width, height: 80, alignment: .center).background(self.color).cornerRadius(8.0)
            
            
        }// end f geometry
    
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
