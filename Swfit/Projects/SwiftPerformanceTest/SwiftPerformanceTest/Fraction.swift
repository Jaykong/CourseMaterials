//
//  Fraction.swift
//  SwiftPerformanceTest
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit

//default value
class Fraction {
    var numerator = 3
    var denomerator = 3
    //构造函数法
//    override init() {
//        numerator = 4
//        denomerator = 5
//    }
    
    //自定义构造函数会让父类的构造方法失效
     init(numerator:Int,denomerator:Int) {
    self.numerator = numerator
    self.denomerator = denomerator
    }
    init(numerator:Int,denomerator:String) {
        self.numerator = numerator
        if let intValue = Int(denomerator) {
            self.denomerator = intValue
        } else
        {
            self.denomerator = 0
        }
        
    }
    init() {
        
    }
    
    func printFraction() {
        print("the fraction is: \(numerator)/\(denomerator)")
        
    }
   

}
