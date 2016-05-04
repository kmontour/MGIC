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
         self.ActivityDescription.text = "Appointments: 2 Points"
        selectedActivity = ActivityType.Appointment
    }
    
    
    @IBAction func Activity3Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Customer Breakfast or Lunch: 2 points"
        selectedActivity = ActivityType.CustomerBreakfastLunch
    }
    

    @IBAction func Activity4Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Training Session: 2 points"
        selectedActivity = ActivityType.TrainingSession
    }


    @IBAction func Activity5Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Trade Association Attendance: 2 points"
        selectedActivity = ActivityType.TradeAssociationAttendance
    }


    @IBAction func Activity6Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Presentation: 3 points"
        selectedActivity = ActivityType.Presentation
    }

    @IBAction func Activity7Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Travel With Home Office Personnel: 3 points"
        selectedActivity = ActivityType.Travel
    }
    
    @IBAction func Activity8Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "After Hours Entertainment: 3 points"
        selectedActivity = ActivityType.AfterHoursEntertainment
    }
    
    @IBAction func Activity9Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Weekend Entertainment: 5 points"
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
        
        
        let createdActivity = createNewActivity()
        
        User.activities.append(createdActivity)
        User.addPoints(createdActivity.pointValue)
        
        
        let alertController = UIAlertController(title: "Add Activity", message:
            "Activity Added!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
        print(createdActivity.date)
        print(createdActivity.type)
        print(createdActivity.typeString)
        print(createdActivity.pointValue)
        print("Size of array:")
        print(User.activities.count)
        
        for activity in User.activities {
            print(activity.typeString)
        }

    }
    

    func createNewActivity() -> Activity {
        let createdActivity = Activity(date: "", customerName: "",notes: "", type: ActivityType.ColdCall)
        if dateTextField.text != nil{
        createdActivity.setDate(dateTextField.text!)
    }
    
    createdActivity.type = selectedActivity
    createdActivity.getTypeInfo(selectedActivity)
    
    return createdActivity
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
