//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class ProdutoDAO:DAO {
    private static var produtoDao = ProdutoDAO()
    static var DaoFactory:ProdutoDAO{
        return produtoDao
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
    func inserir(newproduto:Produto){
        context.insertObject(newproduto)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newproduto:Produto){
        context.deleteObject(newproduto)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[Produto]{
        var produto: [Produto] = [Produto]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "produto")
        request.sortDescriptors = [NSSortDescriptor(key: "nome", ascending: true)]
        
        do {
            produto = try context.executeFetchRequest(request) as! [Produto]
            print("produto qtd: ", produto.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return produto
        
    }
}
