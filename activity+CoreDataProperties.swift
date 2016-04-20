//
//  activity+CoreDataProperties.swift
//  Pickers
//
//  Created by MJ Kim on 4/19/16.
//  Copyright © 2016 Kaitlyn Barbara Montour. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension activity {

    @NSManaged var activityType: String?
    @NSManaged var activityDate: NSDate?

}
