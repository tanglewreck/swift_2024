//
//  readAndPrintFile.swift
//
//  Swift program that uses NSString, contentsOfFile
//
//  Created by mier on 2024-12-20.
//  
//  Source: https://thedeveloperblog.com/swift/file-swift



import Foundation

// Read from this file:
// let path = "/Users/mier/Proj/swift_2024/readAndPrintFile/readAndPrintFile.swift"
let path = "/Users/mier/Proj/swift_2024/README.md"
        
do {
    // Use contentsOfFile overLoad.
    //      – Specify ASCII encoding.
    var data = try NSString(contentsOfFile: path,
        encoding: String.Encoding.ascii.rawValue) 
    // Throws NSCocoaErrorDomain if the file can't be read

    // If a value was returned, print it.
    print(data)
} catch let error as NSError {
    print("Error reading \(path): \(error.domain)")
}
