//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class LojaDAO:DAO {
    private static var lojaDao = LojaDAO()
    static var DaoFactory:LojaDAO{
        return lojaDao
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
    func inserir(newloja:Loja){
        context.insertObject(newloja)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newloja:Loja){
        context.deleteObject(newloja)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[Loja]{
        var loja: [Loja] = [Loja]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "loja")
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        do {
            loja = try context.executeFetchRequest(request) as! [Loja]
            print("loja qtd: ", loja.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return loja
        
    }
}
