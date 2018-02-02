//: Playground - noun: a place where people can play

import UIKit

func gcd(a:Int, b:Int) -> Int {
    let r = a%b
    if r == 0 {
        return b
    } else {
        return gcd(a: b, b: r)
    }
}

func leftRotate(_  array: inout [Int], d: Int) {
    let arrayLenght = array.count
    let gcdValue = gcd(a: arrayLenght, b: d)
    
    for i in 0..<gcdValue {
        let temp = array[i]
        var j = i
        
        while true {
            var k = j + d
            
            if k >= arrayLenght {
                k = k - arrayLenght
            }
            
            if k >= arrayLenght || k == i  {
                break
            }
            
            array[j] = array[k]
            j = k
        }
        
        array[j] = temp
    }
}

var array = [1, 2, 3, 4]
let d = 5

leftRotate(&array, d: d)
print(array)

