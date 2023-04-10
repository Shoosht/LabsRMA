//
//  Student.swift


import Foundation

class Student {
    let id: String = UUID().uuidString
    let ime: String
    let prezime: String
    var polozio: Bool = false
    
    init(ime: String, prezime: String) {
        self.ime = ime
        self.prezime = prezime
    }
}
