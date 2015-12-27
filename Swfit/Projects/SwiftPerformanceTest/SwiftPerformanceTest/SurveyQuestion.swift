//
//  SurveyQuestion.swift
//  SwiftPerformanceTest
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit

class SurveyQuestion: NSObject {
    let question:String
    var answer:String?
//    override init () {
//        question = "what is a dog"
//    }
    init(question:String) {
        self.question = question
    }
    func ask() {
        print(self.question)
    }
    struct Size {
        var width = 0.0, height = 0.0
    }
    
}

