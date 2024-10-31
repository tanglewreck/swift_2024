import Cocoa
import Foundation

// This is a comment
/* This is also a comment */


// Variables can/might have type annotations.
// The 'environment' variable has the type String
var environment: String  // NOTE: Comments can also be appended, like this


/* If a variable is initialised, the compiler **infers** it's type!
 Almost as easy as in Python (but **safer**, since the type of a variable
 cannot be changed once it's been assigned a type. */
var maxNumLogins = 0  // maxNumLogins is assigned the type Int

environment = "production"
if environment == "production" {  // Parentheses not needed
        maxNumLogins = 10
//    print("Production environment => maxNumLogins = \(maxNumLogins)")
} else {
    maxNumLogins = 100
}
/* Variable expansion inside strings is accomplished
 by surround the variable with '\(...)'.
 (Like f-strings in Python without the need to prefix
 the string with 'f'. Nice! */
print("Environment: \(environment) => maxNumLogins = \(maxNumLogins)")

// Parenthese can be added for clarity or grouping
if ("foo" == "bar") {
    print("Weird")
} else if ("foo" == "baz" || "baz" >= "foo"){
    print("Weirder")
} else {
    print("Not weird at all")
}


// Unicode constant and variables names:
let π: Double
π = 3.14159
let π_times_2 = π * 2
print("π = \(π)", terminator:"\n= = = = = = =\n")

var pi = π
print("2 x π = \(pi * 2)")



let possibleNumber = "42"
let actualNumber = Int(possibleNumber)
if var actualNumber = Int(possibleNumber) {
    print(actualNumber * actualNumber)
}

if var actualNumber {
    print(actualNumber * 2)
}

let n = 9.0
print(n.squareRoot())

