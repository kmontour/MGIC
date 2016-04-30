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
         self.ActivityDescription.text = "Activity 2: x points"
    }
    
    
    @IBAction func Activity3Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 3: x points"
    }
    

    @IBAction func Activity4Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 4: x points"
    }


    @IBAction func Activity5Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 5: x points"
    }


    @IBAction func Activity6Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 6: x points"
    }

    @IBAction func Activity7Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 7: x points"
    }
    
    @IBAction func Activity8Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 8: x points"
    }
    
    @IBAction func Activity9Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 9: x points"
    }
 
    @IBAction func Activity10Clicked(sender: AnyObject) {
        self.ActivityDescription.text = "Activity 10: x points"
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
        
        
        let alertController = UIAlertController(title: "Add Activity", message:
            "Activity Added!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
        print(newActivity.date)
     
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
