//
//  ViewController.swift
//  TableViewController
//
//  Created by Henrique Nicolli on 06/02/19.
//  Copyright © 2019 Henrique Nicolli. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var dados: [String] = ["dado 1", "dado 2", "dado 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso)
        celula?.textLabel?.text = dados[indexPath.row]
        
        return celula!
    }
    
}

