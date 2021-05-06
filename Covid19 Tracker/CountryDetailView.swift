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
            CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed", color: .blue).padding(.top)
            CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
            CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
            CountryDetailRow(number: String(format: "%.2f", countryData.fatalityRate), name: "Deaths %", color: .red)
            CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Recovered", color: .green)
            CountryDetailRow(number: String(format: "%.2f", countryData.recoveredRate), name: "Recovery %", color: .green)
            
        }.background(Color("cardBackground"))
        .cornerRadius(8.0).padding()
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
