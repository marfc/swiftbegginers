//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation

// ---- Protocolos ----

protocol MyProtocol {
    var mustBeSettable: Int { get set}
    var doesNotNeedToBeSettable: Int { get }
}

//Creamos un struct que siga las "normas" del protocolo creado
struct SomeStruct: MyProtocol {
    var mustBeSettable: Int
    var doesNotNeedToBeSettable: Int
    
}

var someStruct: MyProtocol = SomeStruct(mustBeSettable: 1, doesNotNeedToBeSettable: 1)
someStruct.doesNotNeedToBeSettable  //No se puede settear ningún valor aquí porque el protocolo dice que es solo getter


//Ahora una clase que sigue ese protocolo
//Hay que tener en cuenta que si una clase hereda de otra, primero se pone la clase de la que hereda, y luego
//el protocolo, aquí vamos a poner el ejemplo de que hereda de UIView
//class SomeClass: UIView, MyProtocol {
//    
//}


protocol SomeOtherProtocol {
    static var someTypeProperty: Int { get set }
}

protocol Shippeable {
    var street: String { get }
    var city: String { get }
    var zip: String { get }
}

struct Product: Shippeable {
    var id: String
    var name: String
    
    //Estas tres son obligatorias, debido a que sigue el protocolo Shippeable
    var street: String
    var city: String
    var zip: String
}

// Protocolos con métodos

protocol Calculate {
    func calculate() -> String
}

//Creamos un struct que siga ese protocolo, y nos obliga a poner la función dentro del struct
struct Calculator: Calculate {
    func calculate() -> String {
        return "Calculando"
    }
}

// Protocolos con inicializadores
protocol Initializable {
    init(parameterOne: String, parameterTwo: String)
    init(parameterOne: String)
}

//Obligatoriamente tiene que tener todos los inits del protocolo
struct User: Initializable {
    init(parameterOne: String, parameterTwo: String) {
        
    }
    init(parameterOne: String) {
        
    }
}

// Extensiones de protocolos

protocol Animatable {
    func animate()
}

extension Animatable {
    func animate(){
        print("Start animation...")
    }
}

class MyCustomView : Animatable {
    
}

let myView = MyCustomView()
myView.animate()  // Imprime Start animation... que es la extensión del Protocolo Animatable


