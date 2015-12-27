//
//  MyMKAnnotionView.swift
//  MapPin
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit
import MapKit
class MyMKAnnotionView: MKAnnotationView {

   override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
     self.canShowCallout = true
    }

   override init(frame: CGRect) {
        super.init(frame: frame)
    }
   required init?(coder aDecoder: NSCoder) {
       fatalError("init(coder:) has not been implemented")
   }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
