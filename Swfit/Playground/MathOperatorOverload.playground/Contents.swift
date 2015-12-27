//: Playground - noun: a place where people can play

import UIKit

class XYPoint {
    var x = 0,y = 0
}
func += (inout left:XYPoint,right:XYPoint)
    -> XYPoint
{
  left.x = left.x + right.x
  left.y = left.y + right.y
    
    return left
}

var p1 = XYPoint()
p1.x = 3
p1.y = 4

let p2 = XYPoint()
p2.x = 5
p2.y = 6

p1 += p2
print(p1.x)
p1.y



