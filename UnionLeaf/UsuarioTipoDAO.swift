//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class UsuarioTipoDAO:DAO {
    private static var usuarioTipoDao = UsuarioTipoDAO()
    static var DaoFactory:UsuarioTipoDAO{
        return usuarioTipoDao
    }
    func alterar(){
        do{
            try context.save()
            print("alterado")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func inserir(newusuarioTipo:UsuarioTipo){
        context.insertObject(newusuarioTipo)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newusuarioTipo:UsuarioTipo){
        context.deleteObject(newusuarioTipo)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[UsuarioTipo]{
        var usuarioTipo: [UsuarioTipo] = [UsuarioTipo]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "usuarioTipo")
        request.sortDescriptors = [NSSortDescriptor(key: "tipo", ascending: true)]
        
        do {
            usuarioTipo = try context.executeFetchRequest(request) as! [UsuarioTipo]
            print("usuarioTipo qtd: ", usuarioTipo.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return usuarioTipo
        
    }
}
