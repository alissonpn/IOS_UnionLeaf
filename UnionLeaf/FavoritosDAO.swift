//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class FavoritosDAO:DAO {
    private static var favoritosDao = FavoritosDAO()
    static var DaoFactory:FavoritosDAO{
        return favoritosDao
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
    func inserir(newfavoritos:Favoritos){
        context.insertObject(newfavoritos)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newfavoritos:Favoritos){
        context.deleteObject(newfavoritos)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[Favoritos]{
        var favoritos: [Favoritos] = [Favoritos]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "favoritos")
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        do {
            favoritos = try context.executeFetchRequest(request) as! [Favoritos]
            print("favoritos qtd: ", favoritos.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return favoritos
        
    }
}
