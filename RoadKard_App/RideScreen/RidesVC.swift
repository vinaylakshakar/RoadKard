//  RidesVC.swift
//  RoadKard_App
//
//  Created by Silstone on 05/01/21.
//

import UIKit
import GoogleMaps
import GooglePlaces

class RidesVC: UIViewController,GMSMapViewDelegate {

    @IBOutlet weak var mapView: GMSMapView!
    
    @IBOutlet weak var height: NSLayoutConstraint!
    @IBOutlet weak var view1: UIView!
    
    let MapStyle = "mapstyle-retro.json"

    // Set the status bar style to complement night-mode.
   override var preferredStatusBarStyle: UIStatusBarStyle {
      return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        GMSServices.provideAPIKey("AIzaSyCo60MFlVp-mzU6xlp2KLFp1x9tEzx-DBY")
        let camera = GMSCameraPosition.camera(withLatitude: 18.514043, longitude: 57.377796, zoom: 16)
        let mapview = GMSMapView.map(withFrame: view.frame, camera: camera)
        mapView.addSubview(mapview)
        
        let marker = GMSMarker()
        marker.position =  CLLocationCoordinate2D(latitude: 18.514043, longitude: 57.377796)
        marker.map = mapview
        
        do {
            // Set the map style by passing a valid JSON string.
            mapview.mapStyle = try GMSMapStyle(jsonString: MapStyle)
    
          } catch {
            NSLog("One or more of the map styles failed to load. \(error)")
          }


      }
    
    
    
    @IBAction func searchAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        self.tabBarController?.tabBar.isHidden = false
            let VC1 = storyBoard.instantiateViewController(withIdentifier: "DepartureViewController") as! DepartureViewController
        
        self.navigationController?.pushViewController(VC1, animated: true)

    }
    
    // Action of Bottom sheet on mapView
    @IBAction func action_panGesture(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view1).y

            if sender.state == .began || sender.state == .changed{
                if translation < 0{

                    if height.constant >= 90 && height.constant < 468 {

                        UIView.animate(withDuration: 0.2) {
                        self.height.constant -= translation/20
                        self.view1.layoutIfNeeded()
                       }
                    }
                }
                else {
                    if height.constant >= 90 && height.constant <= 468{

                    UIView.animate(withDuration: 0.2){
                        self.height.constant -= translation/20
                        self.view1.layoutIfNeeded()
                    }

                }
              }
            }
            if sender.state == .ended {
                if translation < 0{
                    UIView.animate(withDuration: 0.2) {
                    self.height.constant = 468
                    self.view1.layoutIfNeeded()
                   }

                }
                else {
                    UIView.animate(withDuration: 0.2){
                        self.height.constant = 90
                        self.view1.layoutIfNeeded()
                    }

                }
                if height.constant < 90 {
                    height.constant = 90
                }
                else if height.constant > 468{
                    height.constant = 468
                }

            }

    }
//    func floatingPanel()
//    {
//
//        // Create a new appearance.
//        let appearance = SurfaceAppearance()
//
//        // Define shadows
//        let shadow = SurfaceAppearance.Shadow()
//        shadow.color = UIColor.black
//        shadow.offset = CGSize(width: 0, height: 16)
//        shadow.radius = 16
//        shadow.spread = 8
//        appearance.shadows = [shadow]
//
//        // Define corner radius and background color
//        appearance.cornerRadius = 8.0
//        appearance.backgroundColor = .clear
//
//
//    }
    
    
//    @IBAction func search_ride(_ sender: Any) {
//
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//
//        let VC1 = storyBoard.instantiateViewController(withIdentifier: "DepartureViewController") as! DepartureViewController
//        self.navigationController?.pushViewController(VC1, animated: true)
//
//     }
    

    


}
