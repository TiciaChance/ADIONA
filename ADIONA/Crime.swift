//
//  Crime.swift
//  Adiona_Map
//
//  Created by Kasey Luo on 9/10/16.
//  Copyright © 2016 Kasey Luo. All rights reserved.
//
import Foundation
import MapKit
//var crimes = [Crime]()
class Crime: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    
    
}
