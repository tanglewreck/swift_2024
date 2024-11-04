// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

if CommandLine.arguments.count == 2, 
   let number = Int(CommandLine.arguments[1]) {
       print("\(number) x \(number) = \(number * number)")
   } else {
       print(
               """
               Error: Please provide a number to square
               Usage: command_1 <number>
               """
            )
   }
