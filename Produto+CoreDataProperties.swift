//
//  Produto+CoreDataProperties.swift
//  UnionLeaf
//
//  Created by Student on 4/27/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Produto {

    @NSManaged var descricao: String?
    @NSManaged var imagemUrl: String?
    @NSManaged var nome: String?
    @NSManaged var marcaR: Marca?
    @NSManaged var produtoLojaUsuarioR: ProdutoLojaUsuario?
    @NSManaged var categoriaR: NSManagedObject?

}
