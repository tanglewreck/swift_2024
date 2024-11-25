// The Swift Programming Language
// https://docs.swift.org/swift-book
import ArgumentParser

@main
struct UserInput: ParsableCommand {
    @Flag(name: .shortAndLong, help: "Be verbose") var verbose = false
    
    @Option(name: .shortAndLong, help: "number to multiply by")
    var multiplyBy: Float? = nil

    @Argument(help: "number to multiply")
    var number: String

    mutating func run() throws {
        let multiplier = multiplyBy ?? 42
        let floatNum = Float(self.number)!
        let myProduct = floatNum * multiplier
        if verbose {
            print("\(floatNum) * \(multiplier) = \(myProduct)")
        }
//
//        let myMsg = "product of \(floatNum) * multiplier is "
//        if myProduct > 100 {
//            print(myMsg + "larger than 100.0")
//        } else if myProduct > 50 {
//            print(myMsg + "larger than 50.0")
//        } else {
//            print(myMsg + "less than 50.0")
//        }
    }
}
