//
//  FlagAnnotation.swift
//  MapPin
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit
import MapKit
class FlagAnnotation:NSObject,MKAnnotation {
   /* annotation5.title = "Arthur's Stone"
    annotation5.subtitle = "Rock Of Legend"
    annotation5.coordinate = CLLocationCoordinate2DMake(51.593735,-4.179525)*/
    @objc var coordinate: CLLocationCoordinate2D =  CLLocationCoordinate2DMake(51.593735,-4.179525)
    
    
    @objc var title: String? = "This is my earth"
    @objc var subtitle: String? = "welcome all"
}
