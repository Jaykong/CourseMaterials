//
//  ViewController.swift
//  Type Casting
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let library = [Movie(name: "Brave Heart", director: "JayKong"),Movie(name: "Friendship", director: "Fiona"),Song(name: "walk me home", artist: "Lady gaga"),Song(name: "take my breath away", artist: "bill joe"),Song(name: "i don't like your girlfriend", artist: "Arvil")]
        
        
        var movieCount = 0
        var songCount = 0
        for item in library {
            if item is Movie {
                ++movieCount
            }
            
            if item is Song {
                ++songCount
            }
        }
        
        print("songCount is \(songCount)")
        print("movieCount is \(movieCount)")
        
        for item in library {
            if let movie = item as? Movie {
                print(movie.name)
            }
            
            if let song = item as? Song {
                print(song.name)
            }
        }
        
        
        let movies : [AnyObject] = [Movie(name: "Teadrops in Blue Bridge", director: "Jay Kong"),Movie(name: "As Long as you love me", director: "Tera Wu"),Movie(name: "Why did the rain always drop on me", director: "Dead Lock")]
        
        for item in movies {
            let movie = item as! Movie
            print(movie.name)
        }
        
        for movie in movies as! [Movie] {
            print("the move \(movie.name) directed by\(movie.director)" )
        }
        
        let anyobjects : [AnyObject] = ["I am a String",250,Movie(name: "Hello,Swift", director: "Jay Kong")]
        
        for item in anyobjects {
            if let astr = item as? String {
                print(astr)
            }
            if let anum = item as? Int {
                print(anum)
            }
            if let movie = item as? Movie {
                print(movie.name)
            }
            
            
            var anyTypes = [Any]()
            anyTypes = [3,3.0,("name",29),Movie(name: "Wind", director: "cloud"),{print("i am a cloure without para")}]
            for type in anyTypes {
                switch type
                {
                case 3 as Int:
                    print("3 is an Int")
                case 3.0 as Double:
                    print("3.0 is a Double")
                case let movie as Movie:
                    print(movie.name)
                case let (name,age) as (String,Int):
                    print(name,age)
                case let funcNopar as ()->():
                    funcNopar()
                    
                default:
                    break
                
            }
            
            }
            
            
        }
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

