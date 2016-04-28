//
//  Activity.swift
//  Pickers
//
//  Created by MJ Kim on 4/27/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import Foundation

enum ActivityType{
    case ColdCall, Lunch, Dinner, Breakfast, Presentation
}

class Activity{
    
   
    
    
    var date: String = ""
    var customerName: String = ""
    var notes: String = ""
    var type: ActivityType
    
    
    init(date: String, customerName: String, notes: String, type: ActivityType){
        self.customerName = customerName
        self.date = date
        self.notes = notes
        self.type = type
    }
    
    func setDate(date : String){
        self.date = date
    }
    
    
    
    
}