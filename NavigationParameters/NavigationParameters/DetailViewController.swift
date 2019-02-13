//
//  DetailViewController.swift
//  NavigationParameters
//
//  Created by Henrique Nicolli on 06/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var labelResultado: UILabel!
    var textoRecebido = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

       labelResultado.text = textoRecebido
    }
    



}
