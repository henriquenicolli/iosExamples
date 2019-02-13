//
//  CadastroViewController.swift
//  WhatsApp
//
//  Created by Henrique Nicolli on 12/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class CadastroViewController: UIViewController {

    
    @IBOutlet weak var txtNome: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtSenha: UITextField!
    
    var auth: Auth!
    var database: Database!
    
    @IBAction func btnCadastrar(_ sender: Any) {
        if let nome = self.txtNome.text {
            if let email = self.txtEmail.text {
                if let senha = self.txtSenha.text {
                    self.auth.createUser(withEmail: email , password: senha, completion: { (usuario, erro) in
                        
                        if erro == nil {
                            var usuario: Dictionary<String,String> = [:]
                            
                            usuario["nome"] = nome
                            usuario["email"] = email
                            
                            let chave = Base64().codificarStringBase64(texto: email)
                            
                            let  usuarios = self.database.reference().child("usuarios")
                            
                            usuarios.child(chave).setValue(usuario)
                            
                            
                            print("sucess")
                        }
                        
                    })
                    
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
        self.database = Database.database()
    }

}
