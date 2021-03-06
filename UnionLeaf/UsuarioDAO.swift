//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class UsuarioDAO:DAO {
    private static var usuarioDao = UsuarioDAO()
    static var DaoFactory:UsuarioDAO{
        return usuarioDao
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
    func inserir(newusuario:Usuario){
        context.insertObject(newusuario)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newusuario:Usuario){
        context.deleteObject(newusuario)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[Usuario]{
        var usuario: [Usuario] = [Usuario]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "usuario")
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        do {
            usuario = try context.executeFetchRequest(request) as! [Usuario]
            print("usuario qtd: ", usuario.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return usuario
        
    }
}
