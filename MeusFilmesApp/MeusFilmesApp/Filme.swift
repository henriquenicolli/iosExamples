import UIKit

class Filme {
    var titulo: String
    var descricao: String
    var image: UIImage!
    
    init(titulo: String, descricao: String, image: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.image = image;
    }
    
}
