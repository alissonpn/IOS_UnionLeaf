//
//  ViewController.swift
//  UnionLeaf
//
//  Created by Student on 4/26/16.
//  Copyright © 2016 HackaTruck. All rights reserved.
//

import UIKit

class CadastroController {
    static var usuario = Usuario()
    static func populate()
    {
        if (MarcaDAO.DaoFactory.buscar().count == 0){
            //Marca
            let marca1 = Marca()
            marca1.nome = ""
            MarcaDAO.DaoFactory.inserir(marca1)
            let marca2 = Marca()
            marca2.nome = ""
            MarcaDAO.DaoFactory.inserir(marca2)
            let marca3 = Marca()
            marca3.nome = ""
            MarcaDAO.DaoFactory.inserir(marca3)
            //
            let marca4 = Marca()
            marca4.nome = ""
            MarcaDAO.DaoFactory.inserir(marca4)
            let marca5 = Marca()
            marca5.nome = ""
            MarcaDAO.DaoFactory.inserir(marca5)
            let marca6 = Marca()
            marca6.nome = ""
            MarcaDAO.DaoFactory.inserir(marca6)
            //
            let marca7 = Marca()
            marca7.nome = ""
            MarcaDAO.DaoFactory.inserir(marca7)
            let marca8 = Marca()
            marca8.nome = ""
            MarcaDAO.DaoFactory.inserir(marca8)
            let marca9 = Marca()
            marca9.nome = ""
            MarcaDAO.DaoFactory.inserir(marca9)
            
            //Categoria
            let categoria1 = Categoria()
            categoria1.nome = ""
            CategoriaDAO.DaoFactory.inserir(categoria1)
            let categoria2 = Categoria()
            categoria2.nome = ""
            CategoriaDAO.DaoFactory.inserir(categoria2)
            let categoria3 = Categoria()
            categoria3.nome = ""
            CategoriaDAO.DaoFactory.inserir(categoria3)
            
            //Produto
            let produto1 = Produto()
            produto1.nome = ""
            produto1.descricao = ""
            produto1.imagemUrl = ""
            produto1.categoriaR = categoria1
            produto1.marcaR = marca1
            ProdutoDAO.DaoFactory.inserir(produto1)
            let produto2 = Produto()
            produto2.nome = ""
            produto2.descricao = ""
            produto2.imagemUrl = ""
            produto2.categoriaR = categoria1
            produto2.marcaR = marca2
            ProdutoDAO.DaoFactory.inserir(produto2)
            let produto3 = Produto()
            produto3.nome = ""
            produto3.descricao = ""
            produto3.imagemUrl = ""
            produto3.categoriaR = categoria1
            produto3.marcaR = marca3
            ProdutoDAO.DaoFactory.inserir(produto3)
            //
            let produto4 = Produto()
            produto4.nome = ""
            produto4.descricao = ""
            produto4.imagemUrl = ""
            produto4.categoriaR = categoria2
            produto4.marcaR = marca4
            ProdutoDAO.DaoFactory.inserir(produto4)
            let produto5 = Produto()
            produto5.nome = ""
            produto5.descricao = ""
            produto5.imagemUrl = ""
            produto5.categoriaR = categoria2
            produto5.marcaR = marca5
            ProdutoDAO.DaoFactory.inserir(produto5)
            let produto6 = Produto()
            produto6.nome = ""
            produto6.descricao = ""
            produto6.imagemUrl = ""
            produto6.categoriaR = categoria2
            produto6.marcaR = marca6
            ProdutoDAO.DaoFactory.inserir(produto6)
            //
            let produto7 = Produto()
            produto7.nome = ""
            produto7.descricao = ""
            produto7.imagemUrl = ""
            produto7.categoriaR = categoria3
            produto7.marcaR = marca7
            ProdutoDAO.DaoFactory.inserir(produto7)
            let produto8 = Produto()
            produto8.nome = ""
            produto8.descricao = ""
            produto8.imagemUrl = ""
            produto8.categoriaR = categoria3
            produto8.marcaR = marca8
            ProdutoDAO.DaoFactory.inserir(produto8)
            let produto9 = Produto()
            produto9.nome = ""
            produto9.descricao = ""
            produto9.imagemUrl = ""
            produto9.categoriaR = categoria3
            produto9.marcaR = marca9
            ProdutoDAO.DaoFactory.inserir(produto9)
            
            //Loja
            let loja1 = Loja()
            loja1.nome = ""
            loja1.imagemUrl = ""
            loja1.endereco = ""
            loja1.latitude   = ""
            loja1.longitude = ""
            loja1.telefone = ""
            LojaDAO.DaoFactory.inserir(loja1)
            let loja2 = Loja()
            loja2.nome = ""
            loja2.imagemUrl = ""
            loja2.endereco = ""
            loja2.latitude   = ""
            loja2.longitude = ""
            loja2.telefone = ""
            LojaDAO.DaoFactory.inserir(loja2)
            let loja3 = Loja()
            loja3.nome = ""
            loja3.imagemUrl = ""
            loja3.endereco = ""
            loja3.latitude   = ""
            loja3.longitude = ""
            loja3.telefone = ""
            LojaDAO.DaoFactory.inserir(loja3)
            
            //UsuarioTipo
            let usuarioTipo1 = UsuarioTipo()
            usuarioTipo1.tipo = "PF"
            UsuarioTipoDAO.DaoFactory.inserir(usuarioTipo1)
            let usuarioTipo2 = UsuarioTipo()
            usuarioTipo2.tipo = "PJ"
            UsuarioTipoDAO.DaoFactory.inserir(usuarioTipo2)
            
            //Usuario
            usuario.nome = ""
            usuario.loginFacebook = ""
            usuario.loginUL = ""
            usuario.senhaUL = ""
            usuario.pontuacao = 0
            usuario.usuarioTipoR = usuarioTipo1
            UsuarioDAO.DaoFactory.inserir(usuario)
        }
        
    }
    static func cadastrarProduto(loja: Loja, produto: Produto, usuarioLogado: Usuario, observacao: String, valor: Float){
        let produtoLojaUsuario = ProdutoLojaUsuario()
        produtoLojaUsuario.lojaR = loja
        produtoLojaUsuario.produtoR = produto
        produtoLojaUsuario.usuarioR = usuarioLogado
        produtoLojaUsuario.dataCadastro = NSDate()
        produtoLojaUsuario.observacao = observacao
        produtoLojaUsuario.pontuacao = 0
        produtoLojaUsuario.valor = valor
    }
    
    
}