import Cocoa

/* func recurseThis(n: Int) -> Void {

    let m = n - 1
    if m == 0 {
        print(n)
        return
    }
    recurseThis(n: m)
    print(n)
    // return
}
// recurseThis(n: 10)
*/

let FIRST = 1
let SECOND = 3
let THIRD = 5

func fibish (N: Int, first: Int = FIRST, second: Int = SECOND, third: Int = THIRD) -> Int {
    if N < 0 { return 0 }

    if N == 0 {
        return first
    } else if N == 1 {
        return second
    } else if N == 2 {
        return third
    }   else {
        return fibish(N: N - 3) + fibish(N: N - 2) + fibish(N: N - 1)
    }

}
print()
/*
for k in 0...10 {
    print(fibish(N: k, first: FIRST, second: SECOND))
}
*/

/*
print(fibish(N: 3))
print(fibish(N: 9))
print(fibish(N: fibish(N: 3)))
*/
print(fibish(N: 21))



print("THE END")
print()
