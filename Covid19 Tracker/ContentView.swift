//
//  ContentView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 02/05/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        Text("\(covidFetch.totalData.confirmed)")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
