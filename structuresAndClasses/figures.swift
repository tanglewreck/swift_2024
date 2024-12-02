import Foundation

struct Point {
    var x = 0.0, y = 0.0
    init(_ x: Double = 0.0, _ y: Double = 0.0){
        self.x = x
        self.y = y
    }
    init(x: Double = 0.0, y: Double = 0.0){
        self.x = x
        self.y = y
    }
}


struct Size {
    var width: Double
    var height: Double
    init(_ width: Double = 0.0, _ height: Double = 0.0){
        self.height = height  // Here 'self.' is needed
        self.width = width    // since we use the same names for init parameteras
                              // as for the stored properties.
    }
    // initialiser not using '_' and nonambiguous parameter names:
    init(w: Double = 0.0, h: Double = 0.0){
        height = h  // Here 'self.' is NOT needed
        width = w   // since we don't use the same names 
    }
}

// Base class: Figure
class Figure {
    var figureType: String = String()
    // var origin = Point()
    // var origin: Point
    var origin: Point

    // initialiser 1
    init(_ Origin: Point = Point()){
        origin = Origin
    }
    // initialiser 2
    init (origin: Point) {
        self.origin = origin
    }
    // initialiser 3
    init (Origin: Point) {
        self.origin = Origin
    }
}


// Class: Rectangle
// Inherits: Figure
class Rectangle: Figure {
    var size: Size
    // computed property for the distal corner
    var distal: Point {
        get {
            let distalX = origin.x + size.width 
            let distalY = origin.y + size.height 
            return Point(x: distalX, y: distalY)
        }
        set(newDistal) {
            origin.x = newDistal.x - size.width
            origin.y = newDistal.y - size.height
        }
    }

    // computed property 'centre' 
    var centre: Point {
        get {
            let centreX = origin.x + size.width / 2
            let centreY = origin.y + size.height / 2
            return Point(x: centreX, y: centreY)
        }
        set(newCentre){
            origin.x = newCentre.x - size.width / 2
            origin.y = newCentre.y - size.height / 2
        }
    }

    init(_ origin: Point = Point(), _ size: Size = Size(0.0, 0.0)) {
        self.size = size
        // super.init(origin)  // call init() of superclass (sets origin)
        // super.init(origin: origin)  // call init() of superclass (sets origin)
        super.init(Origin: origin)  // call init() of superclass (sets origin)
        figureType = "R"
    }
}

// Extend the Rectangle class with computed
// properties 'area' and 'circumference'
extension Rectangle {
    var area: Double {
        return size.height * size.width
    }
    var circumference: Double {
        return 2 * (size.width + size.height)  // 'self.' is (almost always) not necessary
        // return 2 * (self.size.width + self.size.height)  
    }
}


class Triangle: Figure {
    var firstPoint: Point = Point()
    var secondPoint: Point = Point()
    var thirdPoint: Point = Point()
    init() {
        super.init(origin: Point())
    }
}

extension Triangle {
    var circumference: Double {
        return 0.0
    }
}

var triangleOne = Triangle()
triangleOne.firstPoint = Point(0, 0)
print("triangleOne.origin: \(triangleOne.origin)")
print()

var pointOne = Point()
print("pointOne (default value): \(pointOne)")
print()

pointOne.x = 10
pointOne.y = 20
print("setting x, y of pointOne:")
print("pointOne: \(pointOne)")
print()

print("setting x, y of pointOne:")
pointOne = Point(x: 11, y: 12)
print("pointOne: \(pointOne)")
print()

var rectangleOne = Rectangle() 
print("rectangleOne.figureType:", rectangleOne.figureType)
print("rectangleOne.origin:", rectangleOne.origin)
print("rectangleOne.size:", rectangleOne.size)
print("rectangleOne.centre:", rectangleOne.centre)
print("rectangleOne.distal:", rectangleOne.distal)
print("rectangleOne.area:", rectangleOne.area)
print("rectangleOne.circumference:", rectangleOne.circumference)
print()
rectangleOne.size = Size(10, 11)
rectangleOne.origin = Point(20, 30)        // testing both initialisers
rectangleOne.origin = Point(x: 20, y: 40)  // testing both initialisers
print("setting size and origin of rectangleOne:")
print("rectangleOne.origin:", rectangleOne.origin)
print("rectangleOne.size:", rectangleOne.size)
print("rectangleOne.centre:", rectangleOne.centre)
print("rectangleOne.distal:", rectangleOne.distal)
print("rectangleOne.area:", rectangleOne.area)
print("rectangleOne.circumference:", rectangleOne.circumference)
print()

let newCentre = Point(x: 100.0, y: 100.0)
rectangleOne.centre = newCentre
print("setting centre of rectangleOne to: \(newCentre)")
print("rectangleOne.origin:", rectangleOne.origin)
print("rectangleOne.centre:", rectangleOne.centre)
print("rectangleOne.distal:", rectangleOne.distal)
print()

let newDistal = Point(x: 200.0, y: 200.0)
print("setting distal of rectangleOne to: \(newDistal)")
rectangleOne.distal = newDistal
print("rectangleOne.origin:", rectangleOne.origin)
print("rectangleOne.centre:", rectangleOne.centre)
print("rectangleOne.distal:", rectangleOne.distal)
print()

let pointTwo = Point(x: 100, y: 100)
let sizeTwo = Size(w: 2, h:3)
var rectangleTwo = Rectangle(pointTwo, sizeTwo)
print("rectangleTwo.origin: \(rectangleTwo.origin)")
print("rectangleTwo.size:", rectangleTwo.size)
print("rectangleTwo.area:", rectangleTwo.area)
print()

let figureOne = Figure()
print(figureOne.origin)
