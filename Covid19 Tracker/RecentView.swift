//
//  RecentView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    @State var isSearchVisible = false
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                if isSearchVisible{
                    SearchView(searchText: $searchText)
                }
                
                TotalDataView(totalData: covidFetch.totalData)
                ListHeaderView()
                
                List{
                   
                    ForEach(covidFetch.allcountries.filter{
                        self.searchText.isEmpty ? true :$0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country){  CountryData in
                        NavigationLink(destination: CountryDetailView(countryData: CountryData)){
                            CountryDataRowView(countryData: CountryData)
                          
                        }
                       
                        
                    }
                }.listStyle(PlainListStyle())
                
                
            }
            .navigationBarTitle("Recent Data", displayMode: .inline)
           .navigationBarItems(trailing:
                                Button(action: {
                                    
                                    self.isSearchVisible.toggle()
                                    if !self.isSearchVisible{
                                        self.searchText = ""
                                    }
                                    
                                },label: {
                                    Image(systemName: "magnifyingglass")
                                } ))
            
            
        }//end of navigation view
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
