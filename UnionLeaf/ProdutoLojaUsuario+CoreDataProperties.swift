//
//  ProdutoLojaUsuario+CoreDataProperties.swift
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

extension ProdutoLojaUsuario {

    @NSManaged var observacao: String?
    @NSManaged var pontuacao: String?
    @NSManaged var valor: NSNumber?
    @NSManaged var localR: Local?
    @NSManaged var lojaR: Loja?
    @NSManaged var produtoR: Produto?
    @NSManaged var usuarioR: Usuario?
    @NSManaged var favoritosR: Favoritos?

}
