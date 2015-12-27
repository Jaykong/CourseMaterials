//
//  Bicycle.swift
//  Initialization
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//



class Bicycle: Vehicle {
//    init(bicycle:Int){
//        super.init()
//    }
    convenience override init() {
       self.init()
        //self.init(bicycle:2)
    }
    convenience override init(wheel: Int) {
      // self.init(bicycle: 2)
       self.init()
    }
}
