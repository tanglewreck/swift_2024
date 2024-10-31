import Foundation

//: [Next](@next)

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    var center: Point{
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

let p1 = Point(x: 0.0, y: 0.0)
let p2 = Point(x: 15.0, y: 15.0)
let size_1 = Size(width: 10.0, height: 10.0)

var squareOne = Rect(origin: p1, size: size_1)

var square_1 = Rect(origin: Point(x: 0.0, y: 0.0),
                    size: Size(width: 10.0, height: 10.0))

print(squareOne.center)
squareOne.center = p2
print(squareOne.center)
