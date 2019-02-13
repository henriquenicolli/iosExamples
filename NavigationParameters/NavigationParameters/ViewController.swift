//
//  ViewController.swift
//  NavigationParameters
//
//  Created by Henrique Nicolli on 06/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textParameter: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "enviarDados" {
            let vcDestino = segue.destination as! DetailViewController
            
            vcDestino.textoRecebido = textParameter.text!
            
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

