//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation

// ---- Herencia ----

//Clase padre, superclase
class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "Travelling at \(currentSpeed)"
    }
    
    func makeNoise(){
        print("Vehicle noise...")
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

//Creamos una subclase que herede de Vehicle
class Bycicle: Vehicle {
    var hasBasket: Bool
    
    init(hasBasket: Bool){
        self.hasBasket = hasBasket
    }
    
    override func makeNoise() {
        print("Bycicle noise...🚴‍♀️")
    }
}

let bycicle = Bycicle(hasBasket: true)
bycicle.currentSpeed
bycicle.makeNoise()

//No se puede heredar de una clase que sea final
//Si dentro de una clase normal hay una funcion tipo final, esa función no se va a poder
//overridear
