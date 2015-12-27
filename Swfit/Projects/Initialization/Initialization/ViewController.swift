//
//  ViewController.swift
//  Initialization
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let male = Male(handsome: true)
       male.printMale()
        
        let uglyMan = Male(uglyMan: false)
        uglyMan.printMale()
        
    let vehicle = Vehicle()
    print(vehicle.description)
    
    let bicycle = Bicycle()
        print(bicycle.description)
    let bicycle2 = Bicycle(OneWheel: 1)
        print(bicycle2.description)
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

