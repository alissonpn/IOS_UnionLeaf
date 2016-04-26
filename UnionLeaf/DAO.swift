//
//  DAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class DAO {
    internal let context:NSManagedObjectContext
    init(){
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.context = appDelegate.managedObjectContext
    }
    
}
