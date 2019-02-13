import UIKit

class NoteUserDefault {
    
    let key = "key"
    var notes: [String] = []
    
    func save(note: String){
        notes = list()
        
        notes.append(note)
        UserDefaults.standard.set(notes, forKey: key)
    }
    
    func remove(index: Int){
        notes = list()
        
        notes.remove(at: index)
        UserDefaults.standard.set(notes, forKey: key)        
    }
    
    func list() -> Array<String>{
        let dados = UserDefaults.standard.object(forKey: key)
        
        if dados != nil{
            return dados as! Array<String>
        } else {
            return []
        }
        
    }
    
    
    
}
