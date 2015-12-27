//
//  MediaItem.swift
//  Type Casting
//
//  Created by kongyunpeng on 12/26/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//



class MediaItem {
    var name:String
    init(name:String) {
        self.name = name
       
        
    }
    
}
class Movie: MediaItem {
    var director:String
    init(name:String,director:String){
        self.director = director
        super.init(name: name)
       
        
    }
}

class Song: MediaItem {
    var artist:String
    init(name: String,artist:String) {
        self.artist = artist
        super.init(name: name)
        
    }
}



