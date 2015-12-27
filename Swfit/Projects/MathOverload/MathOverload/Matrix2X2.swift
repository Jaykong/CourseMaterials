//
//  Matrix2X2.swift
//  MathOverload
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import Foundation
class Matrix2X2 {
    var a11 = 0,a12 = 0
    var a21 = 0,a22 = 0
    
   
}

func +(left:Matrix2X2,right:Matrix2X2)->(Matrix2X2) {
    
  let result = Matrix2X2()
    result.a11 = left.a11 + right.a11
    result.a12 = left.a12 + right.a12
    result.a21 = left.a21 + right.a21
    result.a22 = left.a22 + right.a22
    return result

}


