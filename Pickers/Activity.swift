//
//  Activity.swift
//  Pickers
//
//  Created by MJ Kim on 4/27/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import Foundation

enum ActivityType{
    case ColdCall, CustomerBreakfastLunch, TrainingSession, TradeAssociationAttendance, Presentation, Travel, AfterHoursEntertainment, WeekendEntertainment, Appointment
}

class Activity{
    
   
    
    
    var date: String = ""
    var customerName: String = ""
    var notes: String = ""
    var type: ActivityType
    var typeString: String =  ""
    
    
    init(date: String, customerName: String, notes: String, type: ActivityType){
        self.customerName = customerName
        self.date = date
        self.notes = notes
        self.type = type
        
        if type == ActivityType.ColdCall{
            typeString = "Cold Call"
        }
        if type == ActivityType.AfterHoursEntertainment{
            typeString = "After Hours Entertainment"
        }
        if type == ActivityType.CustomerBreakfastLunch{
            typeString = "Customer Breakfast or Lunch"
        }
        if type == ActivityType.Presentation{
            typeString = "Presentation"
        }
        if type == ActivityType.TradeAssociationAttendance{
            typeString = "Trade Association Attendance"
        }
        if type == ActivityType.TrainingSession{
            typeString = "Training Session"
        }
        if type == ActivityType.Travel{
            typeString = "Travel"
        }
        if type == ActivityType.WeekendEntertainment{
            typeString = "Weekend Entertainment"
        }
        if type == ActivityType.Appointment{
            typeString = "Appointment"
        }
    }
    
    func setDate(date : String){
        self.date = date
    }
    
    
    
    
}