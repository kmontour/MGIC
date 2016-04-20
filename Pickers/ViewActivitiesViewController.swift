//
//  ViewActivitiesViewController.swift
//  Pickers
//
//  Created by Kaitlyn Barbara Montour on 3/23/16.
//  Copyright (c) 2016 Kaitlyn Barbara Montour. All rights reserved.
//

import UIKit
import CoreData

class ViewActivitiesViewController: UIViewController {
    
    let moc = DataController().managedObjectContext

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        //here's some stuff we tired when experimenting with core data but it crashes :(
        //seedActivity()
       // fetch()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fetch(){
        let activityFetch = NSFetchRequest(entityName: "activity")
        
        do{
            let fetchedActivity = try moc.executeFetchRequest(activityFetch) as! [activity]
            print(fetchedActivity.first!.activityType!)
        } catch {
            fatalError("oh crap! \(error)")
        }
    }
    
    func seedActivity() {
        
        
        let entity=NSEntityDescription.insertNewObjectForEntityForName("activity", inManagedObjectContext: moc) as! activity
        
        entity.setValue("ColdCall", forKey: "activityType")
        //entity.setValue("Date", forKey: "date")
        
        do{
            try moc.save()
            
        }catch {
            fatalError("Failure to save context: \(error)")
        }
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
