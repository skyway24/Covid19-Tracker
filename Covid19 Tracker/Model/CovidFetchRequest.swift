//
//  CovidFetchRequest.swift
//  Covid19 Tracker
//
//  Created by Akash Verma on 02/05/21.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest: ObservableObject{
    @Published var allcountries: [CountryData] = []
    @Published var totalData: TotalData = testTotalData
    
    
    let headers: HTTPHeaders = [
        "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59",
        "x-rapidapi-host": "covid-19-data.p.rapidapi.com"
    ]
    
    init(){
        
        getAllContries()
        getCurrentTotal()
        
    }
    
    
    func getCurrentTotal(){
        
        
      
// 468722e85emsh688e01d7bb4781dp188eedjsn3b3681968763
       

        
        
        
        AF.request("https://covid-19-data.p.rapidapi.com/totals", headers: headers).responseJSON { response in
            let result = response.data
            
            if result != nil {
                let json = JSON(result!)
      //          print(json)
                
                let confirmed = json[0]["confirmed"].intValue
                let deaths = json[0]["deaths"].intValue
                let recovered = json[0]["recovered"].intValue
                let critical = json[0]["critical"].intValue
                
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
                
                
                
            }
            else{
                self.totalData = testTotalData
            }
            
        }
    }
    
    
    
    
    func getAllContries(){
        
        
        
        
        AF.request("https://covid-19-data.p.rapidapi.com/country/all", headers: headers).responseJSON { response in
            let result = response.value
            var allCount: [CountryData] = []
            if result != nil {
                
                let dataDictionary = result as! [Dictionary<String, AnyObject>]
      
                for countryData in dataDictionary {
                  let country = countryData["country"] as? String ?? "Error"
                    let longitude = countryData["longitude"] as? Double ?? 0.0
                    let latitude = countryData["latitude"] as? Double ?? 0.0
                    let confirmed = countryData["confirmed"] as? Int64 ?? 0
                    let deaths = countryData["deaths"]as? Int64 ?? 0
                    let recovered = countryData["recovered"]as? Int64 ?? 0
                    let critical = countryData["critical"]as? Int64 ?? 0
                    
                    let countryObject = CountryData(country: country, confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered, longitude: longitude, latitude: latitude)
                 allCount.append(countryObject)
                 }
                
                
        }
            self.allcountries = allCount.sorted(by: {$0.confirmed > $1.confirmed})
    }
    
    
    
    
    }
    
}
