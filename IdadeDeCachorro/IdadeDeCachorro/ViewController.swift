//
//  ViewController.swift
//  IdadeDeCachorro
//
//  Created by Henrique Nicolli on 05/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var entry: UITextField!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        var idade = Int(entry.text!)! * 7
        result.text = "a idade eh: " + String(idade)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

