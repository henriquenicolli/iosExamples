//
//  ViewController.swift
//  numeroAleatorioApp
//
//  Created by Henrique Nicolli on 05/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func GerarNumero(_ sender: Any) {
        var numero = arc4random_uniform(11)
        numeroResult.text = "numero aleatorio e:" + String(numero)
        
    }
    
    @IBOutlet weak var numeroResult: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

