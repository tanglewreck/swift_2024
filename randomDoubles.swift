func arithmeticMean(_ array: [Double]) -> Double { 
    // if array.isEmpty { return nil } 
    var total = 0.0 
    for value in array { 
        total += value 
    } 
    return total / Double(array.count) 
}

func generateRandomDoubles(_ min: Double, _ max: Double, _ count: Int) -> [Double]? {
    // if count <= 0 { return nil }
    var randomDoubles: [Double] = []
    for _ in 1...count {
        randomDoubles.append(Double.random(in: min...max))
    }
    return randomDoubles
}

var randomDoubles: [Double] = []

let numberOfIterations = 1
let numberOfRandoms = 10000000
for _ in 1...numberOfIterations {
    if let someRandomDoubles = generateRandomDoubles(-1.0, 1.0, numberOfRandoms) {
        randomDoubles += someRandomDoubles
    }
}
print(randomDoubles.count)
print(arithmeticMean(randomDoubles))

