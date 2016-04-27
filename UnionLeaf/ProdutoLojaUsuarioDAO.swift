//
//  FilmeDAO.swift
//  filme
//
//  Created by Student on 4/25/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit
import CoreData

class ProdutoLojaUsuarioDAO:DAO {
    private static var produtoLojaUsuarioDao = ProdutoLojaUsuarioDAO()
    static var DaoFactory:ProdutoLojaUsuarioDAO{
        return produtoLojaUsuarioDao
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
    func inserir(newprodutoLojaUsuario:ProdutoLojaUsuario){
        context.insertObject(newprodutoLojaUsuario)
        do{
            try context.save()
            print("inserido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func remover(newprodutoLojaUsuario:ProdutoLojaUsuario){
        context.deleteObject(newprodutoLojaUsuario)
        do{
            try context.save()
            print("Removido")
        }
        catch let error as NSError {
            print(error)
        }
    }
    func buscar()->[ProdutoLojaUsuario]{
        var produtoLojaUsuario: [ProdutoLojaUsuario] = [ProdutoLojaUsuario]()
        let request: NSFetchRequest = NSFetchRequest(entityName: "produtoLojaUsuario")
        request.sortDescriptors = [NSSortDescriptor(key: "pontuacao", ascending: false)]
        
        do {
            produtoLojaUsuario = try context.executeFetchRequest(request) as! [ProdutoLojaUsuario]
            print("produtoLojaUsuario qtd: ", produtoLojaUsuario.count)
            
        } catch let erro as NSError {
            print(erro)
        }
        
        return produtoLojaUsuario
        
    }
}
