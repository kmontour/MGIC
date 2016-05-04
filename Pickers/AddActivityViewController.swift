//
//  AddActivityViewController.swift
//  Pickers
//
//  Created by Kaitlyn Barbara Montour on 3/23/16.
//  Copyright (c) 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import UIKit


class AddActivityViewController: UIViewController {
    
    
    
    
    var selectedActivity: ActivityType = ActivityType.ColdCall
    let newActivity = Activity(date: "", customerName: "",notes: "", type: ActivityType.ColdCall)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any addiional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var ActivityDescription: UILabel!
    
    @IBAction func ColdCallClicked(sender: AnyObject) {
        
        self.ActivityDescription.text = "Cold Call: 1 Point"
        selectedActivity = ActivityType.ColdCall
    }
    
    @IBAction func Activity2Clicked(sender: AnyObject) {
         self.ActivityDescription.text = "Appointments: x Points"
        selectedActivity = ActivityType.Appointment
    }
    
    
    @IBAction func Activity3Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Customer Breakfast or Lunch: x points"
        selectedActivity = ActivityType.CustomerBreakfastLunch
    }
    

    @IBAction func Activity4Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Training Session: x points"
        selectedActivity = ActivityType.TrainingSession
    }


    @IBAction func Activity5Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Trade Association Attendance: x points"
        selectedActivity = ActivityType.TradeAssociationAttendance
    }


    @IBAction func Activity6Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Presentation: x points"
        selectedActivity = ActivityType.Presentation
    }

    @IBAction func Activity7Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Travel With Home Office Personnel: x points"
        selectedActivity = ActivityType.Travel
    }
    
    @IBAction func Activity8Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "After Hours Entertainment: x points"
        selectedActivity = ActivityType.AfterHoursEntertainment
    }
    
    @IBAction func Activity9Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Weekend Entertainment: x points"
        selectedActivity = ActivityType.WeekendEntertainment
    }
    
    @IBOutlet weak var CustomerName: UITextField!
    
    
    @IBOutlet weak var Notes: UITextField!
    
    
    @IBOutlet weak var AddActivity: UIButton!

    @IBOutlet weak var dateTextField: UITextField!
    
    @IBAction func textFieldEditing(sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePickerMode.Date
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: #selector(AddActivityViewController.datePickerValueChanged), forControlEvents: UIControlEvents.ValueChanged)
        
    }
    
    func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        dateTextField.text = dateFormatter.stringFromDate(sender.date)
    }

    
    @IBAction func AddTapped(sender: AnyObject) {
        
        if dateTextField.text != nil{
        newActivity.setDate(dateTextField.text!)
        }
        
        newActivity.type = selectedActivity
        newActivity.getTypeInfo(selectedActivity)
        Activity.activities.append(newActivity)

        
        let alertController = UIAlertController(title: "Add Activity", message:
            "Activity Added!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
        print(newActivity.date)
        print(newActivity.type)
        print(newActivity.typeString)
        print(newActivity.pointValue)
     
    }
    
    

    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
