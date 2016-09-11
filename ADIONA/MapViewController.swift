//
//  MapViewController.swift
//  
//
//  Created by Flatiron School on 9/11/16.
//
//

import UIKit
import MapKit
//import SwiftyJSON
//var crimes = [Crime]()


    class MapViewController: UIViewController {
        
        @IBOutlet weak var mapView: MKMapView!
        let regionRadius: CLLocationDistance = 500
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            let initialLocation = CLLocation(latitude: 40.7516030, longitude: -74.0065190)
            centerMapOnLocation(initialLocation)
            //        let newJSONData = readjson("crimedata")
            //        let urlString = "https://data.cityofnewyork.us/api/views/dvh8-u7es/rows.json?accessType=DOWNLOAD"
            //        if let url = NSURL(string: urlString) {
            //            if let data = try? NSData(contentsOfURL: url, options: []) {
            //                let json = JSON(data: data)
            //                 fromJSON(json)
            //
            //            }
            //        }
            
            let crime1 = Crime(title: "Felony Assault 2006",
                               locationName: "2006",
                               discipline: "Felony",
                               coordinate: CLLocationCoordinate2D(latitude: 40.7499097350001, longitude: -74.002560339))
            
            let crime2 = Crime(title: "Burglary 2011",
                               locationName: "2011",
                               discipline: "Felony",
                               coordinate: CLLocationCoordinate2D(latitude: 40.7512599830001, longitude: -74.0067290489999))
            
            let crime3 = Crime(title: "Robbery 2006",
                               locationName: "2006",
                               discipline: "Felony",
                               coordinate: CLLocationCoordinate2D(latitude: 40.7492288670001, longitude: -74.006775762))
            
            let crime4 = Crime(title: "Burglary 2012",
                               locationName: "2006",
                               discipline: "Felony",
                               coordinate: CLLocationCoordinate2D(latitude: 40.7525692680001, longitude: -74.006007322))
            
            let crime5 = Crime(title: "Grand Larceny 2015",
                               locationName: "2011",
                               discipline: "Felony",
                               coordinate: CLLocationCoordinate2D(latitude: 40.7525692680001, longitude: -74.006007322))
            
            let crime6 = Crime(title: "Grand Larceny 2015",
                               locationName: "2006",
                               discipline: "Felony",
                               coordinate: CLLocationCoordinate2D(latitude: 40.752341523, longitude: -74.003145129))
            
            
            
            mapView.addAnnotation(crime1)
            mapView.addAnnotation(crime2)
            mapView.addAnnotation(crime3)
            mapView.addAnnotation(crime4)
            mapView.addAnnotation(crime5)
            mapView.addAnnotation(crime6)
            
            
           // mapView.delegate = self
            
            
            // Do any additional setup after loading the view, typically from a nib.
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        func centerMapOnLocation(location: CLLocation) {
            let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                      regionRadius * 2.0, regionRadius * 2.0)
            mapView.setRegion(coordinateRegion, animated: true)
        }
        
        
    }

