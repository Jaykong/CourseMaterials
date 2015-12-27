//
//  ViewController.swift
//  MathOverload
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let maxtrix1 = Matrix2X2()
        maxtrix1.a11 = 3
        maxtrix1.a12 = 1
        maxtrix1.a21 = 1
        maxtrix1.a22 = 1
        let maxtrix2 = Matrix2X2()
        maxtrix2.a11 = 2
        maxtrix2.a12 = 2
        maxtrix2.a21 = 2
        maxtrix2.a22 = 2
     
        
     let matrix3 = maxtrix1 + maxtrix2
        print(matrix3.a11)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

