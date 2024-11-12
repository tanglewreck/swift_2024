// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser

@main
struct RepeatThePhrase: ParsableCommand {
    @Flag(help: "Include a counter with each repetition")
    private var includeCounter = false
    // public var includeCounter = false

    @Option(name: .shortAndLong, help: "Number of times to repeat 'phrase'")
    private var count: Int? = nil
    // public var count: Int? = nil

    @Argument(help: "The phrase to repeat")
    private var phrase: String
    // public var phrase: String

    mutating func run() throws {
        let repeatCount = count ?? 2

        print("arguments: \(CommandLine.arguments)")
        print("number of arguments \(CommandLine.arguments.count)")

        for k in 1...repeatCount {
            if includeCounter {
                print("\(k): \(phrase)")
            } else {
                print(phrase)
            }
        }
    }
}
