//
//  ViewController.swift
//  MapPin
//
//  Created by kongyunpeng on 12/27/15.
//  Copyright © 2015 kongyunpeng. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let centerPoint = CLLocationCoordinate2D(latitude: 52.011937, longitude: -3.713379)
        let coordinateSpan = MKCoordinateSpanMake(3.5, 3.5)
        let coordinateRegion = MKCoordinateRegionMake(centerPoint, coordinateSpan)
        mapView.setRegion(coordinateRegion, animated: true)
        mapView.regionThatFits(coordinateRegion)
        mapView.delegate = self
        let annotation1 = MKPointAnnotation()
        annotation1.title = "Swansea Bay"
        annotation1.subtitle = "Beautiful Beaches"
        annotation1.coordinate = CLLocationCoordinate2DMake(51.587736,-3.90152)
        let annotation2 = MKPointAnnotation()
        annotation2.title = "Menai Bridge"
        annotation2.subtitle = "Fantastic Engineering"
        annotation2.coordinate = CLLocationCoordinate2DMake(53.220527,-4.163561)
        let annotation3 = MKPointAnnotation()
        annotation3.title = "Parc Y Scarlets"
        annotation3.subtitle = "Oh Dear"
        annotation3.coordinate = CLLocationCoordinate2DMake(51.678809,-4.127469)
        let annotation4 = MKPointAnnotation()
        annotation4.title = "Castell Coch"
        annotation4.subtitle = "A Fairytale Castle"
        annotation4.coordinate = CLLocationCoordinate2DMake(51.535819,-3.2547)
        let annotation5 = MKPointAnnotation()
        annotation5.title = "Arthur's Stone"
        annotation5.subtitle = "Rock Of Legend"
        annotation5.coordinate = CLLocationCoordinate2DMake(51.593735,-4.179525)
        
//        mapView.addAnnotation(annotation1)
//        mapView.addAnnotation(annotation2)
//        mapView.addAnnotation(annotation3)
//        mapView.addAnnotation(annotation4)
//        mapView.addAnnotation(annotation5)
        let annotaton6 = FlagAnnotation()
        mapView.addAnnotation(annotaton6)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
           
           
            let annotationView = MyMKAnnotionView(annotation: FlagAnnotation(), reuseIdentifier: "FlagAnnotation")
            
            annotationView.image = UIImage(named: "flag")
            return annotationView
          
            
    }
    

}

