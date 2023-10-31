//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation

// ---- Closures ----

    
//var closure { (value: Int) -> Int in
//    print("Value \(value)")
//    return value
//}
//
//closure(2)


func returnInteger(value: Int) -> Int {
    return value
}

let funcion = returnInteger(value: 3)

var names = ["Mar", "Pedro", "Ana", "Jose"]

//Este closure lo que hace es ordenar de forma alfabética nuestro Array
names.sorted { (firstValue, secondValue) -> Bool in
    return firstValue < secondValue
}

//El mismo closure de manera optimizada
let namesSorted = names.sorted{$0 < $1}

print(namesSorted)

//Otra forma optimizada
let namesSorted2 = names.sorted(by: <)

print(namesSorted2)

//Función que ordena en sentido contrario al alfabético
func backward(_ stringOne: String, _ stringTwo: String) -> Bool{
    return stringOne > stringTwo
}

//Esta función en tipo closure
let namesSortedBackwards = names.sorted{ (firstValue, secondValue) -> Bool in
    return firstValue > secondValue
}

print(namesSortedBackwards)

//Lo mismo en versión optimizada
let namesSortedBackwards2 = names.sorted{$0 > $1}
print(namesSortedBackwards2)

let namesSortedBackwards3 = names.sorted(by: >)
print(namesSortedBackwards3)

//Otra forma, usando la función en el closure
let namesSortedBackwards4 = names.sorted(by: backward)
print(namesSortedBackwards4)

// ---- Trailing Closure ----
//Cuando necesitamos pasar un closure como último argumento a una función

//Función cuyo último argumento es un closure que no tiene parámetros de entrada y devuelve void
func saveUser(name: String, completionBlock: (Bool) -> Void){
    //Do something
    print("Saving user...")
    completionBlock(true)
}

saveUser(name: "Mar") { boolean in
    print("Closure \(boolean)")
}

// ---- Múltiples closures en una función ----

enum BackendError {
    case customError
}

func getDataFromBackend(status: String, onSuccess: () -> Void, onFailure: (BackendError) -> Void){
    if status == "OK" {
        onSuccess
    } else {
        onFailure(.customError)
    }
}

getDataFromBackend(status: "OK") {
    print("onSuccess")
} onFailure: { (error) in
    print("onFailure \(error)")
}

