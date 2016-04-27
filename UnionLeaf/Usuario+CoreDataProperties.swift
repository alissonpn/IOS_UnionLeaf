//
//  Usuario+CoreDataProperties.swift
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

extension Usuario {

    @NSManaged var loginFacebook: String?
    @NSManaged var loginUL: String?
    @NSManaged var nome: String?
    @NSManaged var pontuacao: NSNumber?
    @NSManaged var senhaUL: String?
    @NSManaged var produtoLojaUsuarioR: ProdutoLojaUsuario?
    @NSManaged var usuarioTipoR: UsuarioTipo?
    @NSManaged var favoritosR: NSManagedObject?

}
