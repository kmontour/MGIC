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
    var pointValue: Int = 0
    static var activities = [Activity]()

    
    
    init(date: String, customerName: String, notes: String, type: ActivityType){
        self.customerName = customerName
        self.date = date
        self.notes = notes
        self.type = type
        
            }
    
    func setDate(date : String){
        self.date = date
    }
    
    func getTypeInfo(type: ActivityType) {
        
        if type == ActivityType.ColdCall{
            typeString = "Cold Call"
            pointValue = 1
        }
        if type == ActivityType.AfterHoursEntertainment{
            typeString = "After Hours Entertainment"
            pointValue = 3
        }
        if type == ActivityType.CustomerBreakfastLunch{
            typeString = "Customer Breakfast or Lunch"
            pointValue = 2
        }
        if type == ActivityType.Presentation{
            typeString = "Presentation"
            pointValue = 3
        }
        if type == ActivityType.TradeAssociationAttendance{
            typeString = "Trade Association Attendance"
            pointValue = 2
        }
        if type == ActivityType.TrainingSession{
            typeString = "Training Session"
            pointValue = 2
        }
        if type == ActivityType.Travel{
            typeString = "Travel w/ Home Office Personnel"
            pointValue = 3
        }
        if type == ActivityType.WeekendEntertainment{
            typeString = "Weekend Entertainment"
            pointValue = 5
        }
        if type == ActivityType.Appointment{
            typeString = "Appointment"
            pointValue = 2
        }

        
    }
    

    
    
    
    
}