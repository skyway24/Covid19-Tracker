//
//  SearchView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct SearchView: View {

    @Binding var searchText: String
    var body: some View {


        HStack{
            TextField("Country...", text: $searchText).padding()
            
        }
        .frame( height: 50).background(Color("cardBackground"))
    }
}
