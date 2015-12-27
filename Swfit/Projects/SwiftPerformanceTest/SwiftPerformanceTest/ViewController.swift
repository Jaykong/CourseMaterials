//
//  ViewController.swift
//  SwiftPerformanceTest
//
//  Created by kongyunpeng on 12/25/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit

struct PersonSturct {
    let age:String
    let name:String
}
class Person {
    let age:String
    let name:String
    init(name:String,age:String) {
        self.age = age;
        self.name = name;
    }
}


class ViewController: UIViewController {
    @IBOutlet weak var myBtn: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet var btnCollection: [UIButton]!
    @IBAction func myBtnClicked(sender: AnyObject) {
    }
    func performTestStruct() {
        var x = CFAbsoluteTimeGetCurrent()
        var arr:[Person] = []
        for _ in 0...100_000 {
            let p = Person(name: "kong", age: "3")
            arr.append(p)
        }
        for n in 0...arr.count - 1 {
            _ = arr[n]
            
        }
        x = (CFAbsoluteTimeGetCurrent() - x) * 1000
        print("the execute time is \(x)")
    }
    
    
    func performanceTest() {
        var x = CFAbsoluteTimeGetCurrent()
        var arr:[Person] = []
        for _ in 0...100_000 {
            let p = Person(name: "kong", age: "3")
            arr.append(p)
        }
        for n in 0...arr.count - 1 {
            _ = arr[n]
            
        }
        x = (CFAbsoluteTimeGetCurrent() - x ) * 1000
        print("the execute time is\(x)milliseconds")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.performanceTest()
        
        //907.876014709473milliseconds
        
        self.performTestStruct()
        
        let frac = Fraction()
        frac.printFraction()
        
        let question = SurveyQuestion(question: "what is your name")
        question.ask()
        question.answer = "kong yunpeng"
        
        struct Size {
            var width:Double, height = 0.0
        }
        
        
       
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

