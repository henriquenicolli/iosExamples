import UIKit

class ViewController: UITableViewController {

    var signos:[String] = []
    var significado:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signos.append("aries")
        signos.append("touro")
        signos.append("gemeos")
        signos.append("cancer")
        signos.append("leao")
        signos.append("virgem")
        signos.append("libras")
        signos.append("escorpiao")
        signos.append("sagitario")
        signos.append("capricornio")
        signos.append("aquario")
        signos.append("peixes")
        
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
        significado.append("signi")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // deseleciona item da lista
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Signigicado do Signo", message: significado[ indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(acaoConfirmar)
        present(alertController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso")
        celula?.textLabel?.text = signos[indexPath.row]
        
        return celula!
    }
    


}

