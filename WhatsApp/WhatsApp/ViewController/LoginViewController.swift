//
//  LoginViewController.swift
//  WhatsApp
//
//  Created by Henrique Nicolli on 12/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtSenha: UITextField!
    
    var auth: Auth!
    
    
    
    @IBAction func btnLogar(_ sender: Any) {
        if let email = self.txtEmail.text {
            if let senha = self.txtSenha.text {
                self.auth.signIn(withEmail: email, password: senha, completion:{(usuario,erro) in
                    if erro != nil {
                        if let usuarioLogado = usuario {
                            
                            
                            
                        }
                    }
                    
                    
                })
            }
        }
    
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
        
        self.auth.addStateDidChangeListener{ (autenticacao, usuario) in
            if usuario != nil {
                self.performSegue(withIdentifier: "segueLoginAutomatico", sender: nil)
            }
            
        }
    }
}
