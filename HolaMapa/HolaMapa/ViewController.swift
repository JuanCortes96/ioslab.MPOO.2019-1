//
//  ViewController.swift
//  HolaMapa
//
//  Created by Germán Santos Jaimes on 10/16/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mapa: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapa.delegate = self
        locationManager.delegate = self
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        
        locationManager.startUpdatingLocation()
        mapa.showsUserLocation = true
        
        mapTypeSegmentedControl.addTarget(self, action: #selector(mapTypeChanged), for: .valueChanged)
    }
    

    @IBAction func addAnotation(_ sender: UIButton) {
        let anotation = CoffeAnotation()
        anotation.coordinate = CLLocationCoordinate2D(latitude: 37.331820, longitude: -122.031180)
        anotation.title = "Somewhere"
        anotation.subtitle = "From elsewhere"
        anotation.imagenURL = "coffee-pin"
        mapa.addAnnotation(anotation)
    }
    
    @objc func mapTypeChanged( segmentedControl: UISegmentedControl){
        switch(segmentedControl.selectedSegmentIndex){
        case 0:
            mapa.mapType = .standard
        case 1:
            mapa.mapType = .satellite
        case 2:
            mapa.mapType = .hybrid
        default:
            mapa.mapType = .standard
        }
    }

    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegion(center: mapa.userLocation.coordinate , span: MKCoordinateSpan(latitudeDelta: 0.0009, longitudeDelta: 0.0009) )
        
        mapa.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.first!)
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation{
            return nil
        }
        var coffeeAnotationView = mapa.dequeueReusableAnnotationView(withIdentifier: "CoffeeAnotationView")
        
        if coffeeAnotationView == nil{
            coffeeAnotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "CoffeeAnotationView")
            coffeeAnotationView?.canShowCallout = true
        }else{
            coffeeAnotationView?.annotation = annotation
        }
        if let coffeeAnotation = annotation as? CoffeAnotation{
            coffeeAnotationView?.image = UIImage(named: coffeeAnotation.imagenURL)
        }
        return coffeeAnotationView
    }

}

