//
//  Vehicle.swift
//  Initialization
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//



class Vehicle {
 let brandName = "Audi"
 var numbersOfWheels = 0
 var description:String {
        return "the number of wheel is \(numbersOfWheels)"
    }
    init() {
        
    }
    
    init(wheel:Int) {
        numbersOfWheels = wheel
        
    }
    convenience init(OneWheel:Int) {
        self.init(wheel: OneWheel)
        numbersOfWheels = 1
    }
}
