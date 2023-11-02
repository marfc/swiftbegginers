/*
    Lección 3: Sentencia if
*/

import Foundation

let myNumber = 5

// --- if ----
// Operadores condicionales:
// ==
// >
// <                      Existe la fuente Firacode que convierte los símbolos directamente a o que
// >=                     se escribiría a mano
// <= 
// != 

if myNumber < 10 {
    print("\(myNumber) es menor que 10")  // Imprime "5 es menor que 10" ya que es la condición que se 
                                          // cumple
} else {
    print("\(myNumber) es mayor que 10")
}

// Operadores lógicos:
// && operador "y"
// || operador "o"

if myNumber > 5 && myNumber < 10 {
    print("\(myNumber) es mayor que 5 y menor a 10")
} else{
    print("\(myNumber) es menor o igual que 5 y mayor o igual que 10")
}

//Paréntesis si vamos a usar varios operadores, para ver el orden de comparativas
if (myNumer > 5 && myNumber < 10) || myNumber >= 50 {
    print("\(myNumber) es mayor que 5 y menor que 10, o es mayor o igual a 50")
} else if myNumber == 1 {
    print("\(myNumber) es 1")
}

