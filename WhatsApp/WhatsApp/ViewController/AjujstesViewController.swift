//
//  AjujstesViewController.swift
//  WhatsApp
//
//  Created by Henrique Nicolli on 13/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit
import FirebaseAuth


class AjujstesViewController: UIViewController {
    
    var auth: Auth!
    var database: Database!
    
    @IBAction func btnDeslogar(_ sender: Any) {
        self.auth = Auth.auth()
        
        do {
            try self.auth.signOut()
            self.dismiss(animated: true, completion: nil)
        } catch {
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
