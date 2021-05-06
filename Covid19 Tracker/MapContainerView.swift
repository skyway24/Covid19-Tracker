//
//  MapContainerView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct MapContainerView: View {
    
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
      
        MapView(countryData: $covidFetch.allcountries)
        
        
        
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
