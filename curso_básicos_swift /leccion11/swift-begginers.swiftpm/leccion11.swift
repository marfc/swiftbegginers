//
//  leccion11.swift
//  swift-begginers
//
//  Created by Mfercons on 31/10/23.
//

import Foundation

// ---- Propiedades en Swift ----

struct Person {
    var salary: Int = 10_000
    
    var salaryPerMonth: Int {
        get {
             return salary/12
        } 
        set(value) {
            self.salary = value
        }
    }
}

//Instanciamos la struct

var person = Person()
person.salary  //Imprime 10000
person.salaryPerMonth  //Imprime 866

//Si hago lo siguiente, cambio el salario a 20000 y entonces la cuenta mensual se haría con el
//nuevo dato
person.salaryPerMonth = 20_000

// Esta struct lo que hace es cambiar el valor de name si se instancia
// e informa de ello primero en willSet, y luego en didSet
struct Database {
    var name: String {
        willSet(newName) {
            print("Will set \(newName)")
        }
        didSet {
            print("Added \(name)")
        }
    }
}

var database = Database(name: "MarDB")
database.name = "New MarDB"

//Si ejecutamos, imprime "Will set New MarDB.\n Added New MarDB"
