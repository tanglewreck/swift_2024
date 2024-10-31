//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func greeting(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

func greet(_ person: String) -> String {
    return "Hello, " + person + "!"
}


print(greeting(person: "Nisse"))
print(greet("Sture"))



