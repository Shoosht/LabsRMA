//
//  PrikaziViewController.swift


import UIKit

class PrikaziViewController: UIViewController {
    
    var student: Student?

    @IBOutlet weak var ime: UILabel!
    
    @IBOutlet weak var prezime: UILabel!
    
    @IBOutlet weak var id: UILabel!
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var PromjenaStatus: UIButton!
    
    @IBAction func polozioButton(_sender: Any){
        student?.polozio = !student!.polozio
        studentStatus()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ime.text=student?.ime
        prezime.text=student?.prezime
        id.text = student?.id
        if (student?.polozio == true){
            status.text = "Polozio"
        }else{
            status.text = "Pao"
        }
        
        
    }
    
    @IBAction func studentStatus () {
        
        if (student?.polozio == false) {
            status.text="Nije polozio."
        }
        else{
            status.text="Polozio."
        }
    }
    
    
    
    
    
}
