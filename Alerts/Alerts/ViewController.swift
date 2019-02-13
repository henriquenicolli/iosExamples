//
//  ViewController.swift
//  Alerts
//
//  Created by Henrique Nicolli on 06/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func btnAbrirBottonAlerta(_ sender: Any) {
        let alerta = UIAlertController(title: "Adicionar Contato", message: "Deseja adicionar um contato?", preferredStyle: .actionSheet)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default){ (acao) in
            print("botao pressionado")
        }
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive){ (acao) in
            print("botao cancelar pressionado")
        }
        
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
    
    }
    
    @IBAction func btnAbrirAlerta(_ sender: Any) {
        let alerta = UIAlertController(title: "Adicionar Contato", message: "Deseja adicionar um contato?", preferredStyle: .alert)
        
        let confirmar = UIAlertAction(title: "Confirmar", style: .default){ (acao) in
            print("botao pressionado")
        }
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive){ (acao) in
            print("botao cancelar pressionado")
        }
        
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

