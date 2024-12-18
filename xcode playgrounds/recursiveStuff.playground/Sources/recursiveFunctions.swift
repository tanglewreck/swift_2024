//
//  fibish.swift
//  
//
//  Created by mier on 2024-12-18.
//

let FIRST = 1
let SECOND = 3
let THIRD = 5

public func fibish (N: Int, first: Int = 1, second: Int = 3, third: Int = 5) -> Int {
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

public func recurseThis(n: Int) -> Void {

    let m = n - 1
    if m == 0 {
        print(n)
        return
    }
    recurseThis(n: m)
    print(n)
    // return
}
