//:  A program that prints out the final series of numbers where those divisible by X, Y and both are replaced by “F” for fizz, “B” for buzz and “FB” for fizz buzz.
//: Based on the following code assignment: https://www.codeeval.com/browse/1/

import Cocoa

func appendDelimiter(value: String, delimiter: String = " ") -> String {
    var result = ""
    if value != "" {
        result = value + delimiter
    } else {
        result = value
    }
    return result
}

func fizzBuzz(x: Int, y: Int, count: Int) -> String {
    var result = ""
    for index in 1 ... count {
        result = appendDelimiter(result, delimiter: ", ")
        
        switch ((index % x == 0), (index % y == 0)) {
            case (false, false): result += String(index)
            case (true, false): result += "F"
            case (false, true): result += "B"
            case (true, true): result += "FB"
        }
    }
    return result
}

let result1 = fizzBuzz(3, y: 5, count: 10)
let result2 = fizzBuzz(2, y: 7, count: 15)

