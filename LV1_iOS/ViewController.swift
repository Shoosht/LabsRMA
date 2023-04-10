//
//  ViewController.swift
//  LV_prvi
//
//  Created by student on 20.03.2023..
//

import UIKit

class ViewController: UIViewController {
    var ime: String? = "John"
    let prezime: String = "Wick"
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var fIrstTextField: UITextField!
    
    @IBOutlet weak var onEntryBtnTap: UIButton!
    
    @IBOutlet weak var prezimeTextField: UITextField!
    
    @IBOutlet weak var studentBtn: UIButton!
    
    var popisStudenata: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rezultat = spojiImePrezime(i: ime!, p: prezime)
        print(rezultat)
        
        fIrstTextField.placeholder="Unesite tekst..."
        DisplayLabel.text=rezultat
        prezimeTextField.placeholder="Unesite prezime..."
    }
    
    func spojiImePrezime(i:String, p:String) -> String {
        return i + " Jr " + p
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        
        let noviStudent = Student(ime: fIrstTextField.text!, prezime: prezimeTextField.text!)
        
        popisStudenata.append(noviStudent)
        
        DisplayLabel.text = noviStudent.format()
        
        fIrstTextField.text = nil
        prezimeTextField.text = nil
        
        
    }
    
    @IBAction func onShowStudents(_ sender: Any) {
        let alert = UIAlertController(title: "Lista studenata", message: nil, preferredStyle: .actionSheet)
        
        for student in popisStudenata {
            let action = UIAlertAction(title: student.format(), style: .default, handler: { _ in
                student.polozio = !student.polozio
            })
            
            if student.polozio {
                action.setValue(UIColor.green, forKey: "titleTextColor")
            }
            else {
                action.setValue(UIColor.red, forKey: "titleTextColor")
            }
            
            alert.addAction(action)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}
