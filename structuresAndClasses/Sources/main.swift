// The Swift Programming Language
// https://docs.swift.org/swift-book

class Person {
    var residence: Residence?
    var noRooms = 1
}

class Residence {
    var numberOfRooms = 1

    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
}

//
let john = Person()  // A person instance
john.noRooms = 2

// john.residence!.numberOfRooms = 2

// This will fail since john.residence is nil at this point:
//      let roomCount = john.residence!.numberOfRooms

if let rooms = john.residence?.numberOfRooms {
        print("rooms = \(rooms)")
} else {
        print("Unable to access number of rooms")
}
// Assign an Residence instance to john.residence
john.residence = Residence()
let roomCount = john.residence!.numberOfRooms
let roomCount2 = john.residence?.numberOfRooms
print("John's residence has \(roomCount) rooms")
print("John's residence has \(roomCount2!) rooms")
john.residence?.printNumberOfRooms()
john.residence!.printNumberOfRooms()

if let rooms = john.residence?.numberOfRooms {
        print("rooms = \(rooms)")
} else {
        print("Unable to access number of rooms")
}

/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var framerate = 0.0
    var name: String?
    init() {
        resolution.width = 1024
        resolution.height = 800
    }
}
var someResolution = Resolution()
print("Width of someResolution = \(someResolution.width)")

var someOtherResolution = Resolution(width: 640, height: 800)
print("Height of someOtherResolution = \(someOtherResolution.height)")

// This doesn't work with classes:
// var someVideoMode = VideoMode(resolution.height: 800)
var someVideoMode = VideoMode()
print("dimensions of someVideoMode = \(someVideoMode.resolution.width)/\(someVideoMode.resolution.height)")
let vga = Resolution(width: 640, height: 800)
print("vga width/height = \(vga.width)/\(vga.height)")

var vgaVideoMode = VideoMode()

/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 
struct Fahrenheit {
    var temperature: Double 
    init(_ temp: Double = 33.0) {
        self.temperature = temp
                            // seems 'self.' isn't necessary (is it ever?)
                            // ==> yes, 'self.' is necessary if the init() parameter name
                            //     is the same as the instance variable
    }
    init(tempInFahrenheit temp: Double) {
        temperature = temp * 2.0
        self.temperature = temp
    }
    init(fromCelcius celcius: Double){
        temperature = celcius * 9 / 5 + 32.0
    }
    init(fromKelvin kelvin: Double){
        temperature = (kelvin - 273.15) * 9 / 5 + 32.0 
    }
}

/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 
struct Celcius {
    var temperature: Double
    init(_ temperature: Double = 0.0){
        self.temperature = temperature
    }
    // convert from Kelvin
    init(fromKelvin kelvin: Double){
        temperature = kelvin - 273.15
    }
    // convert from Fahrenheit
    init(fromFahrenheit fahrenheit: Double){
        temperature = (fahrenheit - 32.0) * 5 / 9
    }
}


/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 
// This structure is equivalent to
// struct Fahrenheit2 {
//      var temperature: Double
//      init(_ temp = 32.0) {
//          temperature = temp
//      }
// }
struct Fahrenheit2 {
    var temperature: Double = 32.0
}

/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 
var f1 = Fahrenheit2(temperature: 212.0) 
var f2 = Fahrenheit() 
var f3 = Fahrenheit(tempInFahrenheit: 32.0)
var f4 = Fahrenheit(fromCelcius: 100.0)
var f5 = Fahrenheit(fromKelvin: 0.0)
var f6 = Fahrenheit(fromKelvin: 273.15)

print("f1.temperature = \(f1.temperature) (F)")
print("f2.temperature = \(f2.temperature) (F)")
print("f3.temperature = \(f3.temperature) (F)")
print("f4.temperature = \(f4.temperature) (F)")
print("f5.temperature = \(f5.temperature) (F)")
print("f6.temperature = \(f6.temperature) (F)")
print()

var c1 = Celcius()
var c2 = Celcius(100.0)
var c3 = Celcius(fromKelvin: 0.0)
var c4 = Celcius(fromFahrenheit: 212.0)
print("c1.temperature = \(c1.temperature) (C)")
print("c2.temperature = \(c2.temperature) (C)")
print("c3.temperature = \(c3.temperature) (C)")
print("c4.temperature = \(c4.temperature) (C)")
print()

/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 
// Colours
/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 

struct Colour {
    let red, green, blue: Double
        init(red: Double, green: Double, blue: Double){
            self.red = red
            self.green = green
            self.blue = blue
        }
}



/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 
// subscripts
/* =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  =  = */ 
struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

var multiplier = 3
var mTimesTable = TimesTable(multiplier: multiplier)
for k in 11...40 {
    // assert(k > 40, "booh (k = \(k))")
    guard k >= 11 else {
        print("k !> 11")
        break
    }
    print("\(multiplier) x \(k) = \(mTimesTable[k])")
}
print()

multiplier = 5
mTimesTable = TimesTable(multiplier: multiplier)
for k in 1..<21 {
    print("\(multiplier) x \(k) = \(mTimesTable[k])")
}
print()
