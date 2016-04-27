//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class CategoriaDAO:DAO {
    private static var categoriaDao = CategoriaDAO()
    static var DaoFactory:CategoriaDAO{
        return categoriaDao
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
    func inserir(newcategoria:Categoria){
        context.insertObject(newcategoria)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newcategoria:Categoria){
        context.deleteObject(newcategoria)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[Categoria]{
        var categoria: [Categoria] = [Categoria]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "categoria")
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        do {
            categoria = try context.executeFetchRequest(request) as! [Categoria]
            print("categoria qtd: ", categoria.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return categoria
        
    }
}
