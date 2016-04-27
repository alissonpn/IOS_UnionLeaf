//
//  Favoritos.swift
//  UnionLeaf
//
//  Created by Student on 4/27/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Favoritos: NSManagedObject {
    convenience init(){
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        let entityDescription = NSEntityDescription.entityForName("Favoritos", inManagedObjectContext: context)
        
        self.init(entity: entityDescription!, insertIntoManagedObjectContext: context)
    }
// Insert code here to add functionality to your managed object subclass

}
