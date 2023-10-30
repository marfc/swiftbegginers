/*
    Lección 10: Clases
*/

import Foundation

// ---- Definición de una clase ----

class Programmer {
    let name : String
    let age : Int
    let languages : [Language]  // Englobamos de forma que el programador solo sabrá lenguajes 
                                // de dentro del enum
    
    var friends: [Programmer]?  // no la hacemos constante, porque si no le obligaría a tener amigos
    //además, la hacemos opcional porque así cabe la posibilidad de que sea nil, y no hace falta meterlo
    // en init

    enum Language {
        case swift
        case kotlin
        case java
        case javascript
    }

    init(name: String, age: Int, languages: [Language]) {
        self.name = name
        self.age = age
        self.languages = languages
    }

    func code() {
        print("Estoy programando \(languages)")
    }
}

// ---- Instanciación de una clase ----

//Poniendo un punto dentro de los corchetes, te salen las opciones del enum
let mar = Programmer(name: "Mar Fernández", age: 23, languages: [.swift, .kotlin])

mar.code() // Imprime Estoy programando [....swift, ....kotlin]

let sara = Programmer(name: "Sara García", age: 34, languages: [.java])

sara.code() // Imprime Estoy programando [....java]

mar.friends = [sara]

print(mar.friends?.first?.name) // Imprime Optional("Sara García")
print(sara.friends)  // Imprime nil ya que no hemos puesto que Sara sea amiga de Mar

