import Foundation
import UIKit

class DetalhesFilmeVIewController : UIViewController{
    
    var filme: Filme!
    
    @IBOutlet weak var filmeImageView: UIImageView!
    
    @IBOutlet weak var lblTitulo: UILabel!
    
    @IBOutlet weak var lvlDescricao: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = self.filme.image
        lblTitulo.text = self.filme.titulo
        lvlDescricao.text = self.filme.descricao
        
    }
    
}
