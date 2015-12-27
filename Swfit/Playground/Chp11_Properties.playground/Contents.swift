//: Playground - noun: a place where people can play

import UIKit

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

let range = FixedLengthRange(firstValue: 3, length: 1)
print(range)

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// 该区间表示整数0，1，2
rangeOfThreeItems.firstValue = 6
// 该区间现在表示整数6，7，8


