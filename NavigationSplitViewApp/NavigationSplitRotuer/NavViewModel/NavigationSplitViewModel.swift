//
//  NavigationSplitViewModel.swift
//  NavigationSplitViewApp
//
//  Created by ibarts on 05/02/26.
//

import Foundation

@Observable
class NavigationSplitViewModel  {
    var selectedMessage: Message?
    var selectedITEngineer: ITEgineers?
    var messages: [Message] = [
        Message(message: "iOS Developer" ,name:"Kundan Kumar"),
        Message(message: "Senior Andoroid Developer" ,name: "Anit"),
        Message(message: "Full stack developer" ,name: "Tanushri"),
        Message(message: "Backend developer" ,name: "Sumit Goswami")
        ]
    
    var allITEngineers: [ITEgineers] = [
        ITEgineers(id: 1, name: "Kundan Kumar" , designation: "Jr. iOS Developer"),
        ITEgineers(id: 2, name: "Anit" ,designation: "Sr. Android Developer"),
        ITEgineers(id: 3, name: "Tanushri",designation: "Full Stack Developer"),
        ITEgineers(id: 4, name: "Sumit Goswami" , designation: "Backend Developer")
    ]
   
}



struct Message : Identifiable , Hashable {
    var id = UUID()
    let message:String
    let name:String
    
    init(id: UUID = UUID(), message: String, name: String) {
        self.id = id
        self.message = message
        self.name = name
    }
}


struct ITEgineers: Identifiable , Hashable {
    var id: Int
    var name: String
    var designation: String
    init(id: Int, name: String, designation: String) {
        self.id = id
        self.name = name
        self.designation = designation
    }
}
