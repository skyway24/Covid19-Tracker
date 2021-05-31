//
//  CountryDataRowView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct CountryDataRowView: View {
    
    
    var countryData: CountryData
    
    
    var body: some View {
       
        
        HStack{
                  Text(countryData.country).fontWeight(.medium).font(.body).lineLimit(2).frame(width: 60, alignment: .leading)
                  Spacer()
                  Text(countryData.confirmed.formatNumber()).font(.subheadline).frame(height: 40).padding(.leading, 3).foregroundColor(Color("gBlue1"))
                  Spacer()
                  Text(countryData.deaths.formatNumber()).frame(width: 60, height: 40, alignment: .center).font(.subheadline).foregroundColor(Color("gRed1")).padding(.leading, 3)
                  Spacer()
                  Text(countryData.recovered.formatNumber()).frame(width: 90, height: 40, alignment: .center).font(.subheadline).foregroundColor(Color("gGreen1"))
              }






        
        
        
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCountryData)
    }
}
