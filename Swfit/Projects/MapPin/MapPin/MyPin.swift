//
//  MyPin.swift
//  MapPin
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit
import MapKit
class MyPin: MKPointAnnotation {
    init(title:String,subTitle:String,coordinate:CLLocationCoordinate2D) {
        super.init()
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
