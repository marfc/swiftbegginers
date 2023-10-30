/*
    Lección 1: Variables y constantes
*/

import UIKit

// ---- Variables ----

var myFirstVariable = "Hola mundo!"
var myFirstNumber = 1

print(myFirstVariable)  //Imprimir variable

myFirstVariable = "He cambiado el valor"

/*
myFirstVariable = 1    da error, porque aunque no haya puesto el tipo explícitamente, es inmutable,
                       yo ya le asigné una cadena y eso hizo que se convirtiera a tipo String, por lo
                       tanto no puede ahora cambiar de tipo
*/

var mySecondVariable = "Hola mundo!"

print(mySecondVariable) //Imprime "Hola mundo!"

mySecondVariable = myFirstVariable
print(mySecondVariable)  //Imprime "He cambiado el valor"

// ---- Constantes ----

let myFirstConstant = "Buenos días" 

print(myFirstConstant) // Imprime "Buenos días"

/*
myFirstConstant = "Buenas noches"  da error, ya que let es para constantes, y una constante no puede
                                   cambiar su valor
*/

let mySecondConstant = myFirstVariable

print(mySecondConstant)  // Imprime "He cambiado el valor"

// Typealias : Sirve para dar un nombre a un tipo más complicado

typealias Name = String  // Si ponemos ahora tipo Name, será como poner String
let username: Name = "marfercon"

typealias AudioSample = UInt16 //Ejemplo más realista, para una app de audio
var maxAmplitudeFound = AudioSample.min

// Tuplas

let user = ("Swift", "Beta")
user.0 //Swift
user.1 //Beta

let (firstValue, secondValue) = ("Swift", "Beta")
firstValue //Swift
secondValue //Beta


