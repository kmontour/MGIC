//
//  Activity.swift
//  Pickers
//
//  Created by MJ Kim on 4/27/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import Foundation

class Activity{
    
    enum ActivityType{
        case ColdCall, Lunch, Dinner, Breakfast, Presentation
    }
    
    
    var date: NSDate
    var customerName: String = ""
    var notes: String = ""
    var type: ActivityType
    
    
    init(date: NSDate, customerName: String, notes: String, type: ActivityType){
        self.customerName = customerName
        self.date = date
        self.notes = notes
        self.type = type
    }
    
    
    
    
}