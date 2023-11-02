/*
    Lección 8: Optionals
*/

import Foundation

let myString = "12345"
let myInt = Int(myString)

print(myInt)      //Imprime Optional(12345)

let myOtherString = "Mar"
let myOtherInt = Int(myOtherString)

print(myOtherInt) //Imprime nil, porque no tiene números el String

if myInt != nil {
    // print(myInt + 10)  no podemos hacer esto directamente porque es un opcional y el programa
    //                    aún no sabe si tiene dentro nil o un valor

    //Desempaquetamos un opcional
    print(myInt! + 10)
}

// Definición de opcionales
var myNewString: String?
print(myNewString)   //Imprime nil

myNewString = "hola!"
print(myNewString)   //Imprime Optional("hola!")

if myNewString != nil {
    print(myNewString!)  //Imprime hola!
} else {
    print(myNewString)
}

// Enlace opcional

if let myNoNilString = myNewString {   //si asignamos y no es nulo, se imprime
    print(myNoNilString)  //En este caso, imprime hola!
} else {
    print(myNewString)
}

