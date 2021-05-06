//
//  Model.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 04/05/21.
//

import Foundation
struct TotalData {
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double {
        return(100.00 * Double(deaths))/Double(confirmed)
    }
    
    var recoveredRate: Double {
        return(100.00 * Double(recovered))/Double(confirmed)
    }
    
}

struct CountryData {
    
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return(100.00 * Double(deaths))/Double(confirmed)
    }
    
    var recoveredRate: Double {
        return(100.00 * Double(recovered))/Double(confirmed)
    }
    
    
}



let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 50)
let testCountryData = CountryData (country: "Test", confirmed: 33275007, critical: 300, deaths: 592410, recovered: 25966389, longitude: 0.0, latitude: 0.0)
