//
//  MapController.swift
//  meetUp
//
//  Created by Student on 11/14/15.
//  Copyright (c) 2015 Wayne. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate{

    var locationManager = CLLocationManager()
    var  startPin: MKPointAnnotation!
    
    @IBOutlet weak var MapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        */
        
        //MapView.frame = self.view.bounds
        
        
        
      // startPin.coordinate = MapView.centerCoordinate
        
        MapView.addAnnotation(startPin)
        MapView.delegate = self
        locationManager.delegate = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
