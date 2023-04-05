//
//  Student.swift
//  LV_prvi
//
//  Created by student on 20.03.2023..
//

import Foundation

class Student {
    
    var ime: String
    var prezime: String
    let id: String = UUID().uuidString
    var polozio: Bool = false
    
    init(ime: String, prezime: String) {
        self.ime = ime
        self.prezime = prezime
    }
    
    func format() -> String {
        return ime + " " + prezime
    }
}
