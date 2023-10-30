/*
    Lección 2: Tipos de datos
*/

import UIKit

// ---- String ----

let myString: String = "Hola mundo"  // Se puede indicar explícitamente el tipo de dato
let myString2 = "Cómo estamos"
let myString3 = myString + ". ¿" + myString2 + "? "  //Concatenación 

print(myString3)  //Imprime "Hola mundo. ¿Cómo estamos? "

// ---- Int ----

let myInt = 1
let myInt2 = 2

print(myInt + myInt2) // Imprime 3

// ---- Double ----

let myDouble = 1.5
let myDouble2 = 2.5
let myDouble3 = 1

print(myDouble + myDouble2) // Imprime 4.0 porque aunque salga entero, es un tipo Double

/*
print(myDouble + myDouble3)    da error porque 1 se toma como Int y no como double por lo que no puede
                               sumar diferentes tipos. Para solucionarlo habría que poner .0 en la
                               declaración de myDouble3
*/

// ---- Float ----

let myFloat: Float = 1.5
let myFloat2 = 2.6

/*
print(myFloat + myFloat2)       da error porque aunque los dos sean números decimales, tienen diferente
                                tipo, ya que se Swift da por hecho que un número decimal será Double
                                En este caso entonces estaríamos sumando un Float más un Double, y no
                                se puede
*/

// ---- Bool ----

let myBool = true
let myBool2 = false

/*
print(myBool + myBool2)         da error ya que no se permite la suma de booleanos
*/
print(myBool && myBool2)  //Operador and. Imprime falso
print(myBool == myBool2)  //Operador igualdad. Imprime falso