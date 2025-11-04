//
//  RideVC.swift
//  RoadKard_App
//
//  Created by Silstone on 13/01/21.
//

import UIKit
import CoreLocation
import DrawerView
import GoogleMaps
import FloatingPanel
import MapKit


class RideVC: UIViewController, GMSMapViewDelegate, CLLocationManagerDelegate, FloatingPanelControllerDelegate, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager: CLLocationManager!
    var userLocation: CLLocation?
    let marker = GMSMarker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let fpc = FloatingPanelController()
        fpc.delegate = self
        fpc.backdropView.backgroundColor = .clear
        guard let contentvc = storyboard?.instantiateViewController(identifier: "RideDrawer") as? RideDrawer else {
            return
        }

        fpc.set(contentViewController: contentvc)
        fpc.addPanel(toParent: self)
        map.delegate = self
        addPin()
    
      }

    func addPin() {
        let annotation = MKPointAnnotation()
        let centerCoordinate = CLLocationCoordinate2D(latitude: 20.836864, longitude:-156.874269)
        annotation.coordinate = centerCoordinate
        annotation.title = "Lanai, Hawaii"
        map.addAnnotation(annotation)
    }
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
//        self.tabBarController?.tabBar.isHidden = true

        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
}


