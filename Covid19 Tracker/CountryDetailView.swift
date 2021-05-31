//
//  CountryDetailView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    
    var body: some View {

            
        
        VStack{
        
        VStack{
            CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed", color: "gBlue1").padding(.top)
            CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: "gYellow1")
            CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: "gRed1")
            CountryDetailRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Deaths %", color: "gRed1")
            CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Recovered", color: "gGreen1")
            CountryDetailRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovery %", color: "gGreen1")
            
        }.background(Color("cardBackground"))
        .cornerRadius(12.0).padding()
            Spacer()
            
            
            
            
            
        }
        .padding(.top, 50).navigationBarTitle(countryData.country)
            }
    }


struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}
