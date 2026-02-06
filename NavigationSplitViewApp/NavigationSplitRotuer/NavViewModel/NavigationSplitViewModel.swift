//
//  NavigationSplitViewModel.swift
//  NavigationSplitViewApp
//
//  Created by ibarts on 05/02/26.
//

import Foundation

@Observable
class NavigationSplitViewModel {
    var selectedCountry: Country?
    var selectedITEngineer: ITEgineers?
    
    var allITEngineers: [ITEgineers] = MockdataBuilder.getMockITEngineers()

    var allCountriesList: [Country] = MockdataBuilder.getMockCountries()
    
    
   
   
}



struct Country : Identifiable , Hashable {
    var id = UUID()
    let message:String
    let name:String
    var allExpertEngineers: [ITEgineers] = []
    init(id: UUID = UUID(), message: String, name: String , allExpertEngineers: [ITEgineers] = []) {
        self.id = id
        self.message = message
        self.name = name
        self.allExpertEngineers = allExpertEngineers
    }
}


struct ITEgineers: Identifiable , Hashable {
    var id: Int
    var name: String
    let country:String
    var designation: String
    init(id: Int, name: String, country:String ,designation: String) {
        self.id = id
        self.name = name
        self.designation = designation
        self.country = country
    }
}


class MockdataBuilder {
    
    static func getMockITEngineers() -> [ITEgineers] {
        [
            ITEgineers(id: 1, name: "Kundan Kumar", country: "USA", designation: "Jr. iOS Developer"),
            ITEgineers(id: 2, name: "Anit", country: "UK", designation: "Sr. Android Developer"),
            ITEgineers(id: 3, name: "Tanushri", country: "INDIA", designation: "Full Stack Developer"),
            ITEgineers(id: 4, name: "Sumit Goswami", country: "France", designation: "Backend Developer")
        ]
    }
    
    static func getMockCountries() -> [Country] {
        [
            Country(message: "Expert Programmers", name:"USA", allExpertEngineers: getMockITEngineers()),
            Country(message: "Expert Software Engineers", name:"UK", allExpertEngineers: getMockITEngineers()),
            Country(message: "Expert Web Developers", name:"France", allExpertEngineers: getMockITEngineers()),
            Country(message: "Expert Backend Engineers", name:"India", allExpertEngineers: getMockITEngineers())
        ]
    }
}
