//
//  ViewController.swift
//  Frases do Dia
//
//  Created by Henrique Nicolli on 05/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnFrase(_ sender: Any) {
        
        var frases: [String] = []
        frases.append("pena de urubu pena de galinha quem ja deu o cu da uma risadinha")
        frases.append("frase 2")
        frases.append("frase 3")
        frases.append("frases 4")
        
        lblFrase.text = frases[Int(arc4random_uniform(4))]
    }
    @IBOutlet weak var lblFrase: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

