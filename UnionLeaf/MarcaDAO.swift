//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class MarcaDAO:DAO {
    private static var marcaDao = MarcaDAO()
    static var DaoFactory:MarcaDAO{
        return marcaDao
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
    func inserir(newmarca:Marca){
        context.insertObject(newmarca)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newmarca:Marca){
        context.deleteObject(newmarca)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[Marca]{
        var marca: [Marca] = [Marca]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "Marca")
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        do {
            marca = try context.executeFetchRequest(request) as! [Marca]
            print("Marca qtd: ", marca.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return marca
        
    }
}
