//
//  ViewActivitiesViewController.swift
//  Pickers
//
//  Created by MJ Kim on 4/27/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import UIKit

//import CVCalendar


class ViewActivitiesViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    
    @IBOutlet weak var UserLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
   
    
 //   @IBOutlet weak var menuView: CVCalendarMenuView!
    
    
 //   @IBOutlet weak var calendarView: CVCalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        displayUser()
        //loadActivities()
        
    //    calendarView.commitCalendarViewUpdate()
   //     menuView.commitMenuViewUpdate()
 
    }
    override func viewDidAppear(animated: Bool) {
        
        self.tableView.reloadData()
        displayUser()
    }
    
    
    func displayUser() {
         let points:String = User.points.description
        
        UserLabel.text = User.name
        pointsLabel.text = "Points: " + points
        
    }
    
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return User.activities.count
    }
    
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! CustomCell
    
       let newActivity = User.activities[indexPath.row]
            
      cell.ActivityDescription.text = newActivity.typeString + ", "
      + newActivity.pointValue.description + " points " + newActivity.date
        return cell
    
   }
        
    
    
    
    
    // MARK: - CVCalendarViewDelegate & CVCalendarMenuViewDelegate
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//extension ViewActivitiesViewController: CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    
    /// Required method to implement!
 //   func presentationMode() -> CalendarMode {
 //       return .MonthView
 //   }
    
    /// Required method to implement!
  //  func firstWeekday() -> Weekday {
 //       return .Sunday
 //   }
//}
