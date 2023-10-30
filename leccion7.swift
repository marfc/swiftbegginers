/*
    Lección 7: Bucle for y while
*/

import Foundation

let myStringArray = ["Hola", "Esto es Swift", "Que guay"]
let myNewDictionary = ["Mar":002, "Ana":001, "James Bond":007]

// ---- For ----

for stringElement in myStringArray {
    print(stringElement)  //Se imprime uno por uno los elementos del array
}

for dictElement in myNewDictionary {
    print(dictElement)    //Imprime (key: "Ana", value: 2) etc por cada elemento
}

for index in 1...5 {
    print(index)          //Imprime 1, 2, 3, 4, 5
}

for index in 1..<5 {
    print(index)          //Imprime 1,2,3,4
}

//otras formas
myStringArray.forEach{ (stringElement) in 
    print(stringElement)
}

myNewDictionary.forEach{ (key, value) in
    print("\(key):\(value)")
}

var myNumberArray: [Int] = []

for index in 1...20 {
    myNumberArray.append(index)
}

print(myNumberArray)  //Imprime del 1 al 20

// ---- While ----

var index = 0

while index < 10 {
    print(myNumberArray[index])
    index += 1
}

// ---- Repeat While

repeat {
    print(myNumberArray[index])   //Imprime hasta el 11, porque la condición se mira luego de la línea
}while index < 10



