//
//  Male.swift
//  Initialization
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

/*
Safety check 2
A designated initializer must delegate up to a superclass initializer before assigning a value to an inherited property. If it doesn’t, the new value the designated initializer assigns will be overwritten by the superclass as part of its own initialization.*/

class Male: Person {
    var handsome:Bool
    init(handsome:Bool) {
        self.handsome = handsome
        super.init(name: "Jay", age: 2, sex: true)
        self.age = 3
        self.name = "Fiona"
        self.sex = true
    }
    
    convenience init(uglyMan:Bool) {
        self.init(handsome: false)
        self.age = 5
        self.name = "Bill"
        self.sex = true
        
    }
    convenience init() {
        self.init(handsome:true)
    }
   convenience override init(name: String, age: Int, sex: Bool) {
       // self.handsome = false
        self.init(handsome: false)
    
        
    }
    func printMale() {
      print("\(name),\(age),\(sex)")
    }
    
    
}
