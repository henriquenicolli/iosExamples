import UIKit

class ViewController: UITableViewController {

    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var filme: Filme
        
        filme = Filme(titulo: "Filme 1", descricao: "descricao 1", image: #imageLiteral(resourceName: "filme1.jpg"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 2", descricao: "descricao 2", image: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", image: #imageLiteral(resourceName: "filme1.jpg"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", image: #imageLiteral(resourceName: "filme1.jpg"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", image: #imageLiteral(resourceName: "filme1.jpg"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", image: #imageLiteral(resourceName: "filme1.jpg"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", image: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", image: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Filme 3", descricao: "descricao 3", image: #imageLiteral(resourceName: "filme1.jpg"))
        filmes.append(filme)
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme = filmes[indexPath.row]
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath) as! FilmeCelula
        
        celula.filmeImageView.image = filme.image
        celula.lblTitulo.text = filme.titulo
        celula.lblDescricao.text = filme.descricao
        
        
        celula.filmeImageView.layer.cornerRadius = 42
        celula.filmeImageView.clipsToBounds = true
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.image*/
        
        return celula
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalheFilmes" {
            if let indexPath = tableView.indexPathForSelectedRow{
                
                let filmeSelecionado = self.filmes[indexPath.row]
                let viewCOntrollerDestino = segue.destination as! DetalhesFilmeVIewController
                
                viewCOntrollerDestino.filme = filmeSelecionado
            }
        }
        
    }
    
}

