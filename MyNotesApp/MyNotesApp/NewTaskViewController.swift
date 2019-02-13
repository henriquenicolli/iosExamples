import UIKit

class NewTaskViewController: UIViewController {
    
    
    @IBOutlet weak var noteEntry: UITextField!
    
    @IBAction func btnAdd(_ sender: Any) {
        if let texto = noteEntry.text {
            let note = NoteUserDefault()
                
            note.save(note: texto)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
