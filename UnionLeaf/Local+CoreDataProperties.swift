//
//  Local+CoreDataProperties.swift
//  UnionLeaf
//
//  Created by Student on 26/04/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Local {

    @NSManaged var latitude: String?
    @NSManaged var longitude: String?
    @NSManaged var produtoLojaUsuarioR: NSManagedObject?

}
