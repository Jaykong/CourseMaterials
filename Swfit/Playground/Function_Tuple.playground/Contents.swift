//: Playground - noun: a place where people can play

import UIKit
func minMax(arr:[Int]) -> (Int,Int)? {
    if arr.isEmpty {
        return nil
    }
    var (min,max) = (arr[0],arr[0])
    for elem in arr {
        if elem < min {
            min = elem
        }
        if elem > max {
            max = elem
        }
    }
    return(min,max)
}

let(min,max) = minMax([3,4,8,9,10])!
if let(min,max) = minMax([-3,4,8,10,11]) {
    print("\(min),\(max)")
} else {
    print("array is empty")
}
min
max
minMax([Int]())

