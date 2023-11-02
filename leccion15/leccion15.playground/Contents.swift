//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import Foundation

// ---- Genéricos ----

//Sirven para preparar tu función a que acepte todo tipo de tipos
//Dos ejemplos conocidos son Array, que puede ser de cualquier tipo, o los diccionarios

func swapTwoStrings(_ a: inout String, _ b: inout String){
    let tempA = a
    a = b
    b = tempA
}

var valueA = "Hola"
var valueB = "Adiós"

//Hay que poner & delante de los parámetros, porque son de tipo inout
swapTwoStrings(&valueA, &valueB)

print("valueA is \(valueA) and valueB is \(valueB)")

func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

func swapTwoDoubles(_ a: inout Double, _ b: inout Double){
    let tempA = a
    a = b
    b = tempA
}

// Todas las funciones tienen la misma lógica, por lo tanto sería mejor hacer una genérica donde sirvieran todos los tipos
func swapTwoValues<T>(_ a: inout T, _ b: inout T){
    let tempA = a
    a = b
    b = tempA
}

swapTwoValues(&valueA, &valueB) 
