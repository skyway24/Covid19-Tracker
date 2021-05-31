//
//  TotalDataView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    
    var body: some View {
       
        VStack{
            HStack{
                
                TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed", color1: "gBlue1", color2: "gBlue2")
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical",color1: "gYellow1", color2: "gYellow2")
                TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths",color1: "gRed1", color2: "gRed2")
                
            }
            HStack{
                
                TotalDataCard(number: String(format: "%.2f", totalData.fatalityRate), name: "Death %", color1: "gRed1", color2: "gRed2")
                TotalDataCard(number: totalData.recovered.formatNumber(), name: "Recovered",color1: "gGreen1", color2: "gGreen2")
                TotalDataCard(number: String(format: "%.2f", totalData.recoveredRate), name: "Recovery %",color1: "gGreen1", color2: "gGreen2")
                
            }
            
        }.frame(height: 170).padding(10)
        
        
        
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
