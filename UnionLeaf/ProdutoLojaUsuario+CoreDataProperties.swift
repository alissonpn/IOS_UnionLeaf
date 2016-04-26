//
//  ProdutoLojaUsuario+CoreDataProperties.swift
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

extension ProdutoLojaUsuario {

    @NSManaged var valor: NSNumber?
    @NSManaged var pontuacao: String?
    @NSManaged var observacao: String?
    @NSManaged var produtoR: Produto?
    @NSManaged var lojaR: Loja?
    @NSManaged var usuarioR: Usuario?
    @NSManaged var localR: Local?

}
