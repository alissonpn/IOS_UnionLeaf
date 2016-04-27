//
//  Categoria.swift
//  UnionLeaf
//
//  Created by Student on 4/27/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Categoria: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    convenience init(){
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDelegate.managedObjectContext
        let entityDescription = NSEntityDescription.entityForName("Categoria", inManagedObjectContext: context)
        
        self.init(entity: entityDescription!, insertIntoManagedObjectContext: context)
    }
}
