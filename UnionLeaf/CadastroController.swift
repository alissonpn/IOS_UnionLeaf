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
            marca1.nome = "Neonutri"
            MarcaDAO.DaoFactory.inserir(marca1)
            let marca2 = Marca()
            marca2.nome = "Atlhetica Nutrition"
            MarcaDAO.DaoFactory.inserir(marca2)
            let marca3 = Marca()
            marca3.nome = "Santa Helena"
            MarcaDAO.DaoFactory.inserir(marca3)
            //
            let marca4 = Marca()
            marca4.nome = "NaturalLife"
            MarcaDAO.DaoFactory.inserir(marca4)
            let marca5 = Marca()
            marca5.nome = "Forever"
    
            MarcaDAO.DaoFactory.inserir(marca5)
            let marca6 = Marca()
            marca6.nome = "NutriVida"
            MarcaDAO.DaoFactory.inserir(marca6)
            //
           
            
            //Categoria
            let categoria1 = Categoria()
            categoria1.nome = "Suplementos"
            CategoriaDAO.DaoFactory.inserir(categoria1)
            let categoria2 = Categoria()
            categoria2.nome = "Produtos Naturais"
            CategoriaDAO.DaoFactory.inserir(categoria2)
            let categoria3 = Categoria()
            categoria3.nome = "Chás"
            CategoriaDAO.DaoFactory.inserir(categoria3)
            
            //Produto
            let produto1 = Produto()
            produto1.nome = "Isolada"
            produto1.descricao = "Suplemento proteico para atletas formulado com pura whey protein isolada, proteína de rápida absorção e alto valor biológico, que auxilia no ganho de massa muscular. Com 25 g de proteínas por porção e enriquecido com vitaminas e minerais.  "
            produto1.imagemUrl = "isolada"
            produto1.categoriaR = categoria1
            produto1.marcaR = marca1
            ProdutoDAO.DaoFactory.inserir(produto1)
            
            let produto2 = Produto()
            produto2.nome = "Protein Premium"
            produto2.descricao = "PROTEIN PREMIUM é um completo Suplemento Proteico para Atletas composto por blend exclusivo de 8 diferentes tipos de proteínas."
           

            produto2.imagemUrl = "Protein Premium"
            produto2.categoriaR = categoria1
            produto2.marcaR = marca2
            ProdutoDAO.DaoFactory.inserir(produto2)
            
            let produto3 = Produto()
            produto3.nome = "First Whey Protein"
            produto3.descricao = "A First Whey Protein é a tradicional pasta de amendoim (peanut butter), produzida com matéria prima de altíssima qualidade com grãos de amendoim selecionados adicionada de whey protein, sem adição de açúcar e livre de glúten. "
            produto3.imagemUrl = "First"
            produto3.categoriaR = categoria1
            produto3.marcaR = marca3
            ProdutoDAO.DaoFactory.inserir(produto3)
            //
            let produto4 = Produto()
            produto4.nome = "Chá de Capim Cidreira (50g)"
            produto4.descricao = "O capim-cidreira,é calmante, diurético e expectorante pode ser utilizado como remédio caseiro para acalmar, combater a retenção de líquidos e também é útil para combater o catarro, quando ele é associado ao limão. "
            produto4.imagemUrl = "Cha"
            produto4.categoriaR = categoria3
            produto4.marcaR = marca4
            ProdutoDAO.DaoFactory.inserir(produto4)
            
            let produto5 = Produto()
            produto5.nome = "30 Ervas EMAGRECEDOR - 60 Cápsulas"
            produto5.descricao = "Inibidor de apetite,regulador intestinal, ajuda no combate a gordura localizada, celulite, estrias, colesterol, diabetes, ansiedade."
    

            produto5.imagemUrl = "Trinta Ervas"
            produto5.categoriaR = categoria2
            produto5.marcaR = marca6
            ProdutoDAO.DaoFactory.inserir(produto5)
            
            let produto6 = Produto()
            produto6.nome = "Açúcar de Coco Copra 100% Natural 350g"
            produto6.descricao = "O Açúcar de Coco é um excelente substituto do açúcar refinado, pois ele não é processado, adulterado ou filtrado, não contém preservativos e é 100% natural"
            produto6.imagemUrl = "Acucar Coco"
            produto6.categoriaR = categoria2
            produto6.marcaR = marca6
            ProdutoDAO.DaoFactory.inserir(produto6)
          
            
            //Loja
            let loja1 = Loja()
            loja1.nome = "Free Power Suplementos"
            loja1.imagemUrl = ""
            loja1.endereco = "Rio Vermelho"
            loja1.latitude   = ""
            loja1.longitude = ""
            loja1.telefone = "3213-4445"
            LojaDAO.DaoFactory.inserir(loja1)
            let loja2 = Loja()
            loja2.nome = "BSX Nutrition "
            loja2.imagemUrl = ""
            loja2.endereco = "Rio Vermelho"
            loja2.latitude   = ""
            loja2.longitude = ""
            loja2.telefone = "3303-5555"
            LojaDAO.DaoFactory.inserir(loja2)
            let loja3 = Loja()
            loja3.nome = "Mundo Saudável"
            loja3.imagemUrl = ""
            loja3.endereco = "Rio Vermelho"
            loja3.latitude   = ""
            loja3.longitude = ""
            loja3.telefone = "3339-9191"
            LojaDAO.DaoFactory.inserir(loja3)
            
            //UsuarioTipo
            let usuarioTipo1 = UsuarioTipo()
            usuarioTipo1.tipo = "PF"
            UsuarioTipoDAO.DaoFactory.inserir(usuarioTipo1)
            let usuarioTipo2 = UsuarioTipo()
            usuarioTipo2.tipo = "PJ"
            UsuarioTipoDAO.DaoFactory.inserir(usuarioTipo2)
            
            //Usuario
            usuario.nome = "Vitor"
            usuario.loginFacebook = "vitorTI"
            usuario.loginUL = "vitorTI"
            usuario.senhaUL = "123"
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