//
//  ListHeaderView.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 05/05/21.
//

import SwiftUI

struct ListHeaderView: View {
    
    
    
    
    var body: some View {
        
        HStack{
            Text("Country").fontWeight(.bold).font(.subheadline).frame(width: 60, alignment: .leading).padding(.leading, 15)
            Spacer()
            Text("Conf.").fontWeight(.bold).font(.subheadline).frame(height: 40).padding(.leading, 5)
            Spacer()
            Text("Death").fontWeight(.bold).font(.subheadline).frame(height: 40).padding(.leading, 5)
            Spacer()
            Text("Recover").fontWeight(.bold).font(.subheadline).frame(height: 40).padding(.trailing, 50)
        }.background(Color("cardBackground"))
        
        
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}
