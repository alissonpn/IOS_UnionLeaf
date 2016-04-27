//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class LocalDAO:DAO {
    private static var localDao = LocalDAO()
    static var DaoFactory:LocalDAO{
        return localDao
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
    func inserir(newlocal:Local){
        context.insertObject(newlocal)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newlocal:Local){
        context.deleteObject(newlocal)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[Local]{
        var local: [Local] = [Local]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "local")
        request.sortDescriptors = [NSSortDescriptor(key: "latitude", ascending: true)]
        
        do {
            local = try context.executeFetchRequest(request) as! [Local]
            print("local qtd: ", local.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return local
        
    }
}
