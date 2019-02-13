import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textoLabel: UITextView!
    
    
    @IBAction func salvarBtn(_ sender: Any) {
        if let texto = textoLabel.text{
            UserDefaults.standard.set(texto, forKey: "anotacao")
        }
        
    }
    
    func recuperar() -> String {
        
        if let texto = UserDefaults.standard.object(forKey: "anotacao"){
            return texto as! String
        }
        
        return ""
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textoLabel.text = recuperar()
    }


}

