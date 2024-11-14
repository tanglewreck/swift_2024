// The Swift Programming Language
// https://docs.swift.org/swift-book

var oddNumbers: [Int] = []
var evenNumbers: [Int] = []
oddNumbers.append(contentsOf: [1, 3, 5, 7, 9, 11 ,13, 17])
evenNumbers.append(contentsOf: [0, 2, 4, 6, 8, 10, 12, 14])

var allNumbers: [Int] = []
allNumbers.append(contentsOf: evenNumbers)
allNumbers.append(contentsOf: oddNumbers)

print(evenNumbers)
print(oddNumbers)
print(allNumbers)

var students: Array<String> = Array()
// Also ok:
//var students2: Array<String> = []
students.append(contentsOf: ["Danni", "Xerxes", "Edda", "Alice", "Bob", "Charlie"])
print(students)

var sortedStudents = students.sorted(by: { (s1: String, s2: String) -> Bool in return s1 < s2 })
print(sortedStudents)

var reversedStudents = students.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })
print(reversedStudents)

