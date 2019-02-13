import UIKit

class ViewController: UITableViewController {
    

    var notes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        listUpdate()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let note = NoteUserDefault()
            note.remove(index: indexPath.row)
            listUpdate()
        }
    }
    
    func listUpdate(){
        let note = NoteUserDefault()
        notes = note.list()
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        
        cell.textLabel?.text =  notes[indexPath.row]
        
        return cell
    }
    
}

