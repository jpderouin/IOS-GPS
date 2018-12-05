//
//  ViewController.swift
//  IOS GPS
//
//  Created by Jake Derouin on 12/4/18.
//  Copyright © 2018 com.JakeDerouin. All rights reserved.
//

import UIKit
import CoreLocation
class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var latitiude: UILabel!
    let manager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        manager.startUpdatingLocation()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
   
        longitude.text = "Longitude: \(manager.location!.coordinate.longitude)"
       latitiude.text = "Latitude: \(manager.location!.coordinate.latitude)"
    }

}

