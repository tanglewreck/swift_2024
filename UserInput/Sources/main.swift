// The Swift Programming Language
// https://docs.swift.org/swift-book

print("give me a number", terminator: ": ")
var myFloat = Float(readLine()!)!

// var myNum = Int(readLine()!)!
// let myOptStringNum = readLine()
// let myString = readLine()!
//
// let myString = myOptStringNum!
// let myNum1 = Int(myOptStringNum!)!
// let myNum2 = Int(myString)!
// print(myString)
// print(myNum1 * 42)
// print(myFloat * 42)
var myProduct = myFloat * 42
print("\(myFloat) * 42 = \(myProduct)")
let myMsg = "product of \(myFloat) * 42 is "
    if myProduct > 100 {
        print(myMsg + "larger than 100.0")
    } else if myProduct > 50 {
        print(myMsg + "larger than 50.0")
    } else {
        print(myMsg + "less than 50.0")
    }
// print(Int(myNum! * 42))
