//
//  ViewController.swift
//  coreDataApp
//
//  Created by Henrique Nicolli on 08/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        

        // cria dados
        /*
        let usuario = NSEntityDescription.insertNewObject(forEntityName: "Usuario", into: context)
        
        usuario.setValue("Henrique Nicolli", forKey: "nome")
        usuario.setValue("123", forKey: "senha")
        
        do {
            try context.save()
        } catch {
            
        }
        */
        // cria dados
        /*
        let produto = NSEntityDescription.insertNewObject(forEntityName: "Produto", into: context)

        produto.setValue("MacBook Pro", forKey: "nome")
        produto.setValue("produto bom parceiro", forKey: "descricao")
        produto.setValue(12.50, forKey: "preco")

        do {
            try context.save()
        } catch {
            print("deu erro no produto")
        }
        
        */
        
        // recupera dados do produto
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Produto")
        
        // aplicar ordenacao
        let ordenacao = NSSortDescriptor(key: "preco", ascending: true)
        requisicao.sortDescriptors = [ordenacao]
        
        // aplicar filtros
        let predicate = NSPredicate(format: "nome == %@", "MacBook")
        let predicate2 = NSPredicate(format: "nome contains %@", "MacBook")
        
        let combinacaoFiltro = NSCompoundPredicate(andPredicateWithSubpredicates: [predicate,predicate2])
        
        requisicao.predicate = predicate
        
        do {
            let produtos = try context.fetch(requisicao)
            if produtos.count > 0 {
                for produto in produtos as! [NSManagedObject] {
                    
                    if let nomeProduto = produto.value(forKey: "nome"){
                        if let descricaoProduto = produto.value(forKey: "descricao"){
                            if let precoProduto = produto.value(forKey: "preco"){
                                
                                print(String (describing: nomeProduto) + " | " + String(describing: descricaoProduto) + " | " + String(describing: precoProduto))
                                
                            }
                        }
                    }
                }
            } else {
                print("nenhum usuario cadastrado")
            }
        } catch  {
            
        }
        
        
        
        // recupera dados do usuario
        /*
        let requisicao = NSFetchRequest<NSFetchRequestResult>(entityName: "Usuario")
        do {
            let usuarios = try context.fetch(requisicao)
            if usuarios.count > 0 {
                for usuario in usuarios as! [NSManagedObject] {
                    if let nomeUsuario = usuario.value(forKey: "nome"){
                        print(nomeUsuario)
                    }
                }
            } else {
                print("nenhum usuario cadastrado")
            }
        } catch  {
            
        }
        */
    }
}

