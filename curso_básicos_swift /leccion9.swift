/*
    Lección 9: Funciones
*/

import Foundation 

func sayHello() {
    print("Hola!")
}

sayHello()        //Hola!

func sayMyName(name: String){
    print("Mi nombre es \(name)")
}

sayMyName("Mar")  //Mi nombre es Mar

func sayMyNameAndAge(name: String, age: Int){
    print("Mi nombre es \(name) y mi edad es \(age)")
}

sayMyNameAndAge(name: "Mar", age: 23)

func helloString() -> String {
    return "Hola"
}

print(helloString())  //Imprime Hola

func sumTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

let myNewNumber = sumTwoNumbers(firstNumber: 2, secondNumber: 3)

print(myNewNumber)  //Imprime 5
