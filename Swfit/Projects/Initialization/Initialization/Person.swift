//
//  Person.swift
//  Initialization
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//


class Person {
    var name:String
    var age:Int
    var sex:Bool
    init(name:String,age:Int,sex:Bool) {
        self.name = name
        self.age = age
        self.sex = sex
    }
    /*
    Safety check 3
    A convenience initializer must delegate to another initializer before assigning a value to any property (including properties defined by the same class). If it doesn’t, the new value the convenience initializer assigns will be overwritten by its own class’s designated initializer.*/
    convenience init() {
        self.init(name:"Jay",age:1,sex:true)
        self.name = "Jay"
        
    }
    
    
}
