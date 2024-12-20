//
//  readAndPrintFile.swift
//
//  Swift program that uses NSString, contentsOfFile
//
//  Created by mier on 2024-12-20.
//  
//  Source: https://thedeveloperblog.com/swift/file-swift



import Foundation

@main
struct readAndPrintFile {
    static func main() {
        // Read from this file:
        let path = "/Users/mier/Proj/swift_2024/readAndPrintFile.swift"
        // let fooPath = "/Users/mier/Proj/swift_2024/fooreadAndPrintFile.swift"
        
        do {
            // Use contentsOfFile overLoad.
            //      – Specify ASCII encoding.
            //      – Ignore errors (TODO: implement error handling)
            var data = try NSString(contentsOfFile: path,
                    encoding: String.Encoding.ascii.rawValue) 
                // If a value was returned, print it.
            print(data)
        
        }
    }
}
