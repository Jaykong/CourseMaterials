//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Cannie"
var sum = 0
var n = 99
for var i = 1; i <= n; ++i {
    sum += i
}
sum
var whilesum = 0
var whileI = 1

while whileI <= n {
    whilesum += whileI
    ++whileI
}
whilesum

var repeatWhileSum = 0
var repeatWhileI = 1
repeat {
repeatWhileSum += repeatWhileI
++repeatWhileI
} while repeatWhileI <= n

repeatWhileSum


var intArr = ["5","4","6","2"]
intArr[1] = "b"
intArr

var familyNames = ["kong","li","liu","gao"]
familyNames[0] = "qian"
familyNames[1] = "fu"
familyNames[2] = "qing"
familyNames[3] = "wu"

//familyNames[4] = "zhao"
familyNames


var firstStr = "Hello"
var secondStr = "There"
var combinedStr1 = firstStr + secondStr
var combinedStr2 = "Hello" + "There"
var combinedStr3 = "\(firstStr)\(secondStr)"

var multiSum = 1
var multiN = 6

for value in 1...multiN
{
  multiSum *= value
}
multiSum

var multiSum2 = 1
for var i = 1; i <= 7 ; ++i {
    multiSum2 *= i
}
multiSum2




