//: Playground - noun: a place where people can play

import UIKit

//:协议只能声明计算属性值，如果声明为{get set}则采用协议的类的属性必须是var类型。如果声明为{get}，则即可为var，也可为let，因为计算属性不会更改类的属性值
//:### *注意set中有一个newValue值*

protocol Description {
    var fullName:String {get set}
}

class Person:Description {
    var familyName:String
    var name:String
    init(familyName:String,name:String) {
        self.familyName = familyName
        self.name = name
    }
    var fullName:String {
        get {
        return familyName + name
        }
        set {
          familyName = newValue.substringToIndex(familyName.startIndex.advancedBy(4))
        }
    }
}

var person = Person(familyName: "kong", name: "yunpeng")
person.fullName
person.fullName = "fujiejie"
person.familyName
person.fullName
person.name


struct CGPoint {
    var x:Double
    var y:Double
}

struct CGSize {
    var width:Double
    var height:Double
}

class CGRect {
    var point:CGPoint
    var size:CGSize
    init(point:CGPoint,size:CGSize) {
        self.point = CGPoint(x: point.x, y: point.y)
        self.size = CGSize(width: size.width, height: size.height)
    }
    
    var center:CGPoint {
        get {
            let centerX = point.x + size.width/2
            let centerY = point.y + size.height/2
            return CGPoint(x: centerX, y: centerY)
        }
        set {
          point.x = newValue.x - size.width/2
          point.y = newValue.y - size.height/2
        }
    }
    
    
    func description() {
        print("(\(point.x),\(point.y))(\(size.width),\(size.height))")
    }
}

var rect = CGRect(point: CGPoint(x: 1, y: 2), size: CGSize(width: 5, height: 5))

rect.description()
print(rect.center.x)
print(rect.center.y)
rect.center = CGPoint(x: 2, y: 2)
rect.description()





















